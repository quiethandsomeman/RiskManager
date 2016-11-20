package model;

public class RiskType {

	private String typename;
	private int identified;
	private int worsen;
	private String name;
	
	public RiskType() {
		// TODO Auto-generated constructor stub
	}

	public RiskType(String typename, int identified, int worsen,String name) {
		super();
		this.typename = typename;
		this.identified = identified;
		this.worsen = worsen;
		this.name=name;
	}
	
	public RiskType(String typename) {
		this.typename = typename;
	}

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public int getIdentified() {
		return identified;
	}

	public void setIdentified(int identified) {
		this.identified = identified;
	}

	public int getWorsen() {
		return worsen;
	}

	public void setWorsen(int worsen) {
		this.worsen = worsen;
	}
	
}
