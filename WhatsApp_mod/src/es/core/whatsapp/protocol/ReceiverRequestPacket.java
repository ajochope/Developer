package es.core.whatsapp.protocol;

import java.io.OutputStream;
import java.util.Collection;

import es.core.whatsapp.Message;
import es.core.whatsapp.db.MessageStorageFactory;

public class ReceiverRequestPacket implements ExecutablePacket{
	private OutputStream os;
	private String id;
	
	public ReceiverRequestPacket(String id, OutputStream os){
		this.id = id;
		this.os = os;
	}
	
	@Override
	public ExecutablePacket execute() {
		System.out.println(getClass().getName()+".execute(): Searching messages for id: "+id);
		MessageStorageFactory msgStgFact = MessageStorageFactory.getInstance();
		Collection<Message> messages = msgStgFact.getMessageStorage().getMessages(id);
		System.out.println(getClass().getName()+".execute(): Generating response...");
		return new ReceiverResponsePacket(messages, os);
	}

}
