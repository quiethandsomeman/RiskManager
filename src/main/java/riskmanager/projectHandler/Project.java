package riskmanager.projectHandler;

public class Project {
	private String username;
	private int projectid;
	private String proname;
	private String proinfo;
	public String getUsername() {
		return username;
	}
	public Project(String username,int id,String proname,String proinfo){
		this.username=username;
		this.projectid=id;
		this.proname=proname;
		this.proinfo=proinfo;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	public String getProinfo() {
		return proinfo;
	}
	public void setProinfo(String proinfo) {
		this.proinfo = proinfo;
	}
}
