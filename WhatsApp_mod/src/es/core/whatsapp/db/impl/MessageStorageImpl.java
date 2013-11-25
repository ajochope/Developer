package es.core.whatsapp.db.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

import es.core.whatsapp.Message;
import es.core.whatsapp.db.MessageStorage;

public class MessageStorageImpl implements MessageStorage{
	private static MessageStorageImpl singleton = new MessageStorageImpl();
	private ArrayList<Message> messages;
	
	private MessageStorageImpl(){
		messages = new ArrayList<Message>();
	}
	
	public static MessageStorageImpl getInstance(){
		return singleton;
	}
	
	
	@Override
	public void add(Message msg) {
		messages.add(msg);
	}

	@Override
	public Collection<Message> getMessages(String id) {
		ArrayList<Message> result = new ArrayList<Message>();
		
		Iterator<Message> it = ((ArrayList<Message>)messages.clone()).iterator();
		while (it.hasNext()){
			Message msg = it.next();
			if (id.equals(msg.getTo())){
				result.add(msg);
				messages.remove(msg);
			}
		}
		
		return result;
	}

}
