package es.core.whatsapp.protocol;

import java.io.DataInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.IOException;
import java.net.Socket;

public class ExecutablePacketFactory {
	private ExecutablePacketFactory(){}
	
	public static ExecutablePacket createExecutablePacket(Socket s) throws IOException{
		System.out.println(ExecutablePacketFactory.class.getName()+".createExecutablePacket(): Generating request packet...");
/*
		DataInputStream dis = new DataInputStream(s.getInputStream());
		String headerLine = dis.readUTF();
*/
                BufferedReader reader = new BufferedReader(new InputStreamReader(s.getInputStream()));
		String headerLine = reader.readLine();
                
		System.out.println(ExecutablePacketFactory.class.getName()+".createExecutablePacket(): Processing HEADER: "+headerLine);
		if (headerLine.startsWith(Protocol.SENDER_HEADER)){
/*
			String toLine = dis.readUTF();
			String timeLine = dis.readUTF();
			String dataLine = dis.readUTF();
*/
                        String toLine = reader.readLine();
			String timeLine =reader.readLine(); 
			String dataLine = reader.readLine();
				
			String from = headerLine.split(":")[1].trim();
			String to = toLine.split(":")[1].trim();
			String timeStr = timeLine.split(":")[1].trim();
			String data = dataLine.split(":")[1].trim();
			
			System.out.println(ExecutablePacketFactory.class.getName()+".createExecutablePacket(): Receiving message: "+from+","+to+","+timeStr+","+data);
			
			return new SenderRequestPacket(from, to, data, Long.parseLong(timeStr));
		} else if (headerLine.startsWith(Protocol.RECEIVER_HEADER)){
			String id = headerLine.split(":")[1].trim();
			
			System.out.println(ExecutablePacketFactory.class.getName()+".createExecutablePacket(): Sending messages to: "+id);
			
			return new ReceiverRequestPacket(id, s.getOutputStream());
		}
		
		return null;
	}
}
