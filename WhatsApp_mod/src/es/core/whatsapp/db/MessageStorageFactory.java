package es.core.whatsapp.db;

import es.core.whatsapp.db.impl.MessageStorageFactoryImpl;

public abstract class MessageStorageFactory {
	public static MessageStorageFactory getInstance(){
		return new MessageStorageFactoryImpl();
	}
	
	public abstract MessageStorage getMessageStorage();
}
