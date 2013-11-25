package es.core.whatsapp.db.impl;

import es.core.whatsapp.db.MessageStorage;
import es.core.whatsapp.db.MessageStorageFactory;

public class MessageStorageFactoryImpl extends MessageStorageFactory{

	@Override
	public MessageStorage getMessageStorage() {
		// TODO Auto-generated method stub
		return MessageStorageImpl.getInstance();
	}

}
