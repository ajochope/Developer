package es.core.whatsapp.protocol;

import es.core.whatsapp.Message;
import es.core.whatsapp.db.MessageStorage;
import es.core.whatsapp.db.MessageStorageFactory;

public class SenderRequestPacket implements ExecutablePacket {
	private Message msg;
	
	public SenderRequestPacket(String from, String to, String data, long time){
		msg = new Message(from, to, data, time);
	}
	
	@Override
	public ExecutablePacket execute() {
		MessageStorageFactory msgStgFact = MessageStorageFactory.getInstance();
		MessageStorage storage = msgStgFact.getMessageStorage();
		storage.add(msg);
		
		return new VoidPacket();
	}

}
