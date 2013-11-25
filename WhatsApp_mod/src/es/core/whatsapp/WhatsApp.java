package es.core.whatsapp;

import java.io.IOException;

public class WhatsApp {
	public static void main(String[] args) throws IOException{
		int port = 1234;
		System.out.println("Starting server at port "+port+"...");
		WhatsAppServer server = new WhatsAppServer(port);
		server.start();
	}
}
