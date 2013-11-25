package es.core.whatsapp.db;

import java.util.Collection;

import es.core.whatsapp.Message;

public interface MessageStorage {
	public void add(Message msg);
	public Collection<Message> getMessages(String id);
}
