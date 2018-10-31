package lxf.ssm.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import lxf.ssm.dao.MessageMapper;
import lxf.ssm.service.IMessageService;
import lxf.ssm.vo.Message;

@Service("messageService")
public class MessageService implements IMessageService   {
	@Resource
	private MessageMapper messageDao;
	
	public int addMessage(Message message){
		return this.messageDao.insert(message);
	}

}