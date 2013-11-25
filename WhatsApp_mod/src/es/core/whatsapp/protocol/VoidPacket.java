package es.core.whatsapp.protocol;

public class VoidPacket implements ExecutablePacket{
	@Override
	public ExecutablePacket execute() {
		return null;
	}
}
