package es.core.whatsapp;

public class Message {
	private String from, to, data;
	private long time;
	
	public Message(String from, String to, String data, long time){
		this.from = from;
		this.to = to;
		this.data = data;
		this.time = time;
	}
	
	public String getFrom(){ return from; }
	public String getTo(){ return to; }
	public String getData(){ return data; }
	public long getTime(){ return time; }
	
	@Override
	public int hashCode() {
		return from.hashCode()+to.hashCode()+data.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Message){
			Message msg = (Message)obj;
			if (from != null && !from.equals(msg.from)) return false;
			if (to != null && !to.equals(msg.to)) return false;
			if (data != null && !data.equals(msg.data)) return false;
			
			return true;
		}
		
		return false;
	}
}
