package model;

public class RiskPlan {
	private int planId;
	private String name;
	private String description;
	
	public RiskPlan(String name, String description) {
		super();
		this.name = name;
		this.description = description;
	}

	public int getPlanId() {
		return planId;
	}

	public void setPlanId(int planId) {
		this.planId = planId;
	}

	public RiskPlan() {
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
}
