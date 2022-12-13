package bean;

public class Customer {
	int id;
	String customername;
	String contactno;
	String companyname;
	String accesories;
	String accesoryname;
	String model;
	String color;
	String pieces;
	String amount;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public String getAccesories() {
		return accesories;
	}

	public void setAccesories(String accesories) {
		this.accesories = accesories;
	}

	public String getAccesoryname() {
		return accesoryname;
	}

	public void setAccesoryname(String accesoryname) {
		this.accesoryname = accesoryname;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getPieces() {
		return pieces;
	}

	public void setPieces(String pieces) {
		this.pieces = pieces;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}
	
	@Override
	public String toString() {
		return id+" : "+customername+ " : "+contactno+" : "+companyname+" : "+accesoryname+" : "+accesories+" : "+color+" : "+model+" : "+pieces+ " : "+amount;
	}
}
