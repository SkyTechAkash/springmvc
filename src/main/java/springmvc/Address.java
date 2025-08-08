package springmvc;

import javax.persistence.Embeddable;

@Embeddable
public class Address {
	
	private String street;
	private int pin;
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public double getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	public Address(String street, int pin) {
		super();
		this.street = street;
		this.pin = pin;
	}
	
	public Address() {}
	@Override
	public String toString() {
		return "Address [street=" + street + ", pin=" + pin + "]";
	}

}
