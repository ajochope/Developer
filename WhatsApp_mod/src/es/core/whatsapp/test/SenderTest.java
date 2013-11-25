package es.core.whatsapp.test;

import java.io.PrintWriter;
import java.io.IOException;
import java.net.Socket;
import java.util.Scanner;

import es.core.whatsapp.protocol.Protocol;

public class SenderTest {
	public static void main(String[] args) throws IOException {
   		if (args.length != 2){
      			System.out.println("executeSender from to ");
 			System.exit(0);
     		}

		Scanner scanner = new Scanner(System.in);
		System.out.print("Mensaje a mandar: ");
		String server = "localhost";
		int port = 1234;
		String msg = scanner.nextLine();
		String from = args[0];
		String to = args[1];

		Socket s = new Socket(server, port);

		//DataOutputStream dos = new DataOutputStream(s.getOutputStream());
                PrintWriter dos = new PrintWriter(s.getOutputStream());
		dos.println(Protocol.MSG_FROM + ": " + from);
		dos.println(Protocol.RCTP_TO + ": " + to);
		dos.println(Protocol.TIME + ": " + System.currentTimeMillis());
		dos.println(Protocol.DATA + ": " + msg);

		dos.close();
		s.close();
	}
}
