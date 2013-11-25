package es.core.whatsapp.test;

//import java.io.DataInputStream;
//import java.io.DataOutputStream;
import java.io.PrintWriter;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.IOException;
import java.net.Socket;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import es.core.whatsapp.protocol.Protocol;

public class ReceiverTest {
	public static void main(String[] args) throws IOException{
   		if (args.length != 1) {
                  System.out.println("./executeReceiver id");
		  System.exit(0);
                }
		String server = "localhost";
		int port = 1234;
		String id = args[0];
		
		Socket s = new Socket(server, port);
		
		System.out.println(ReceiverTest.class.getName()+".main(): Getting messages for id: "+id);
		
		System.out.println(ReceiverTest.class.getName()+".main(): Sending: "+Protocol.RECEIVER_HEADER+": "+id);
		
		//DataOutputStream dos = new DataOutputStream(s.getOutputStream());
 		PrintWriter dos = new PrintWriter(new OutputStreamWriter(s.getOutputStream()), true);
		dos.println(Protocol.RECEIVER_HEADER+": "+id);

		System.out.println(ReceiverTest.class.getName()+".main(): Getting response...");
		//DataInputStream dis = new DataInputStream(s.getInputStream()); 
    		BufferedReader reader = new BufferedReader(new InputStreamReader(s.getInputStream()));
		
		String line = null;
		
		//do{
		while ((line = reader.readLine()) != null){
			if (!line.startsWith(Protocol.TIME)) System.out.println(line);
			else {
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
				Calendar cal = Calendar.getInstance();
				cal.setTimeInMillis(Long.parseLong(line.split(":")[1].trim()));
				System.out.println(Protocol.TIME+": "+sdf.format(cal.getTime()));
			}
		};
		
		s.close();
	}
}
