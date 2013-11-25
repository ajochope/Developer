package es.core.whatsapp;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

import es.core.whatsapp.protocol.ExecutablePacket;
import es.core.whatsapp.protocol.ExecutablePacketFactory;

public class WhatsAppServer {
	private int port;
	private boolean running;
	
	public WhatsAppServer(int port){
		this.port = port;
	}
	
	public void start() throws IOException{
		running = true;
		ServerSocket ss = new ServerSocket(port);
		while(running){
			Socket s = ss.accept();
			processRequest(s);
		}
	}
	
	public void stop(){
		running = false;
	}
	
	private void processRequest(final Socket s){
		Thread thr = new Thread(new Runnable(){
			public void run(){
				
				try{
					ExecutablePacket request = ExecutablePacketFactory.createExecutablePacket(s);
					System.out.println(getClass().getName()+".run(): Processing request: "+request.getClass().getName());
					ExecutablePacket response = request.execute();
					System.out.println(getClass().getName()+".run(): Processing response: "+response.getClass().getName());
					response.execute();
					
					System.out.println(getClass().getName()+".run(): Request finished. Closing connection...");
					
					s.close();
				}catch(IOException ioe){
					ioe.printStackTrace();
				}
			}
		});
		thr.start();
	}
}
