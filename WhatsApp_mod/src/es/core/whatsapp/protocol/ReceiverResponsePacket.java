package es.core.whatsapp.protocol;

import java.io.PrintWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;

import es.core.whatsapp.Message;

public class ReceiverResponsePacket implements ExecutablePacket{
	private OutputStream os;
	private Collection<Message> messages;
	
	public ReceiverResponsePacket(Collection<Message> messages, OutputStream os){
		this.messages = messages;
		this.os = os;
	}
	
	@Override
	public ExecutablePacket execute(){
		System.out.println(getClass().getName()+".execute(): Sending messages...");
		//DataOutputStream dos = new DataOutputStream(os);
                PrintWriter writer = new PrintWriter(os);
		if (messages.size() > 0){
			Iterator<Message> it = messages.iterator();
			while (it.hasNext()){
				Message msg = it.next();
				//try{
					writer.println(Protocol.MSG_FROM+": "+msg.getFrom());
					writer.println(Protocol.TIME+": "+msg.getTime());
					writer.println(Protocol.DATA+": "+msg.getData());
                                        //writer.flush();
				//}catch(IOException ioe){
				//	ioe.printStackTrace();
				//}
			}
			writer.flush();
		} else {
			//try{
				//dos.writeUTF(Protocol.EMPTY);
				writer.println(Protocol.EMPTY);
				writer.flush();
			//}catch(IOException ioe){
				//ioe.printStackTrace();
			//}
		}
		return new VoidPacket();
	}
}
