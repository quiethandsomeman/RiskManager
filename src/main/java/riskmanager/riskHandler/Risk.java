package riskmanager.riskHandler;

public class Risk {
	private int projectid;
	private int riskid;
	private String rname;
	private String possibility;
	private String effect;
	private int value;
	private String uploader;
	private String tracker;
	private String info;
	
	public Risk(int proid,int rid,String rname,String possibility,String effect,int value,String uper,String tracker,String info){
		this.projectid=proid;
		this.riskid=rid;
		this.rname=rname;
		this.possibility=possibility;
		this.effect=effect;
		this.value=value;
		this.uploader=uper;
		this.tracker=tracker;
		this.info=info;
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
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getPossibility() {
		return possibility;
	}
	public void setPossibility(String possibility) {
		this.possibility = possibility;
	}
	public String getEffect() {
		return effect;
	}
	public void setEffect(String effect) {
		this.effect = effect;
	}
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	public String getUploader() {
		return uploader;
	}
	public void setUploader(String uploader) {
		this.uploader = uploader;
	}
	public String getTracker() {
		return tracker;
	}
	public void setTracker(String tracker) {
		this.tracker = tracker;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
}
