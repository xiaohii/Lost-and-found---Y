package com.example.lostandfound;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Component
public class InitDatabase implements CommandLineRunner {

    @Autowired(required = false)
    private DataSource dataSource;

    @Override
    public void run(String... args) {
        if (dataSource == null) {
            System.out.println("DataSource未注入，跳过初始化");
            return;
        }

        System.out.println("\n========== 开始初始化失物招领数据库 ==========");

        try (Connection connection = dataSource.getConnection();
             Statement statement = connection.createStatement()) {

            System.out.println("数据库连接成功");

            executeSqlFile(statement, "init_database.sql", "表结构");

            if (shouldLoadDemoData(connection)) {
                executeSqlFile(statement, "init_data.sql", "测试数据");
            } else {
                System.out.println("检测到现有业务数据，跳过测试数据导入");
            }

            System.out.println("========== 数据库初始化完成 ==========\n");
        } catch (Exception e) {
            System.out.println("初始化数据库失败: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private void executeSqlFile(Statement statement, String fileName, String label) throws Exception {
        String sqlPath = locateFile(fileName);
        if (sqlPath == null) {
            System.out.println("未找到" + fileName + "，跳过" + label + "初始化");
            return;
        }

        String sqlScript = Files.readString(Paths.get(sqlPath), StandardCharsets.UTF_8);
        List<String> sqlStatements = splitStatements(sqlScript);

        int successCount = 0;
        for (String sql : sqlStatements) {
            statement.execute(sql);
            successCount++;
        }

        System.out.println(label + "初始化完成，共执行 " + successCount + " 条 SQL");
    }

    private boolean shouldLoadDemoData(Connection connection) {
        return isTableEmpty(connection, "user")
                || isTableEmpty(connection, "attribute")
                || isTableEmpty(connection, "post");
    }

    private boolean isTableEmpty(Connection connection, String tableName) {
        String sql = "SELECT COUNT(*) FROM `" + tableName + "`";
        try (Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery(sql)) {
            return resultSet.next() && resultSet.getInt(1) == 0;
        } catch (Exception e) {
            return true;
        }
    }

    private List<String> splitStatements(String sqlScript) {
        String[] lines = sqlScript.split("\\R");
        StringBuilder builder = new StringBuilder();

        for (String line : lines) {
            String trimmed = line.trim();
            if (trimmed.isEmpty() || trimmed.startsWith("--") || trimmed.startsWith("#")) {
                continue;
            }
            builder.append(line).append('\n');
        }

        String[] rawStatements = builder.toString().split(";");
        List<String> statements = new ArrayList<>();
        for (String rawStatement : rawStatements) {
            String sql = rawStatement.trim();
            if (!sql.isEmpty()) {
                statements.add(sql);
            }
        }
        return statements;
    }

    private String locateFile(String filename) {
        String[] paths = {
                filename,
                System.getProperty("user.dir") + File.separator + filename,
                System.getProperty("user.dir") + File.separator + "src" + File.separator + "main"
                        + File.separator + "resources" + File.separator + filename
        };

        for (String path : paths) {
            File file = new File(path);
            if (file.exists()) {
                return path;
            }
        }
        return null;
    }
}
