package grocery;

public class Product {
    
	private String proid;
	private String propic;
	private String proname;
	private String price;
	private String qt;
	
	
	public Product(String propic, String proname, String price, String qt) {
		this.proid = proid;
		this.propic = propic;
		this.proname = proname;
		this.price = price;
		this.qt = qt;
	}


	public String getProid() {
		return proid;
	}


	public void setProid(String propic) {
		this.proid = proid;
	}

	public String getPropic() {
		return propic;
	}


	public void setPropic(String propic) {
		this.propic = propic;
	}


	public String getProname() {
		return proname;
	}


	public void setProname(String proname) {
		this.proname = proname;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getQt() {
		return qt;
	}


	public void setQt(String qt) {
		this.qt = qt;
	}
	
	
	
}
