package com.example.lostandfound.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.lostandfound.entity.Message;
import com.example.lostandfound.mapper.MessageMapper;
import com.example.lostandfound.service.MessageService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = Exception.class)
public class MessageServiceImpl extends ServiceImpl<MessageMapper, Message> implements MessageService {


}
