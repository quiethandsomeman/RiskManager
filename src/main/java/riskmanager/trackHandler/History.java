package riskmanager.trackHandler;

public class History {
	private int projectid;
	private int riskid;
	private String time;
	private String tracker;
	public History(int proid,int rid,String time,String tracker){
		this.projectid=proid;
		this.riskid=rid;
		this.time=time;
		this.tracker=tracker;
	}
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	public int getRiskid() {
		return riskid;
	}
	public void setRiskid(int riskid) {
		this.riskid = riskid;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTracker() {
		return tracker;
	}
	public void setTracker(String tracker) {
		this.tracker = tracker;
	}
}
