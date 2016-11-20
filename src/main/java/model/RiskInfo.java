package model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class RiskInfo {
	
	private int riskid;
	private int projectId;
	private int type;
	private String description;
	private int possibility;
	private int impact;
	private String trigger;
	private String submitter;
	private String date;

	public RiskInfo(int projectId, int type, String description, int possibility, int impact, String trigger,
			String submitter) {
		super();
		this.projectId = projectId;
		this.type = type;
		this.description = description;
		this.possibility = possibility;
		this.impact = impact;
		this.trigger = trigger;
		this.submitter = submitter;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp nowdate = new Timestamp(System.currentTimeMillis());
		this.date = sdf.format(nowdate);
	}

	public RiskInfo() {
		// TODO Auto-generated constructor stub
	}

	public int getProjectId() {
		return projectId;
	}

	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPossibility() {
		return possibility;
	}

	public void setPossibility(int possibility) {
		this.possibility = possibility;
	}

	public int getImpact() {
		return impact;
	}

	public void setImpact(int impact) {
		this.impact = impact;
	}

	public String getTrigger() {
		return trigger;
	}

	public void setTrigger(String trigger) {
		this.trigger = trigger;
	}

	public String getSubmitter() {
		return submitter;
	}

	public void setSubmitter(String submitter) {
		this.submitter = submitter;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
