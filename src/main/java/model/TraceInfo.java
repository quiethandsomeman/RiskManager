package model;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class TraceInfo {
	
	private int traceId;
	private int riskId;
	private String isProblem;
	private String remark;
	private String tracer;
	private String date;
	
	public TraceInfo(int riskId, String isProblem, String remark, String tracer) {
		super();
		this.riskId = riskId;
		this.isProblem = isProblem;
		this.remark = remark;
		this.tracer = tracer;
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Timestamp nowdate = new Timestamp(System.currentTimeMillis());
		this.date = sdf.format(nowdate);
	}

	public TraceInfo() {
		// TODO Auto-generated constructor stub
	}

	public int getTraceId() {
		return traceId;
	}

	public void setTraceId(int traceId) {
		this.traceId = traceId;
	}

	public int getRiskId() {
		return riskId;
	}

	public void setRiskId(int riskId) {
		this.riskId = riskId;
	}

	public String getIsProblem() {
		return isProblem;
	}

	public void setIsProblem(String isProblem) {
		this.isProblem = isProblem;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getTracer() {
		return tracer;
	}

	public void setTracer(String tracer) {
		this.tracer = tracer;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
}
