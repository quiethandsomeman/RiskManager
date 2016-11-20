package model;

import java.util.ArrayList;

public class RiskPlan {
	private int planId;
	private String name;
	private String description;
	private String username;
	private ArrayList<RiskType> list;
	
	public RiskPlan(String name, String description, String username,ArrayList<RiskType> list) {
		super();
		this.name = name;
		this.description = description;
		this.username = username;
		this.list=list;
	}

	public ArrayList<RiskType> getList() {
		return list;
	}

	public void setList(ArrayList<RiskType> list) {
		this.list = list;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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
