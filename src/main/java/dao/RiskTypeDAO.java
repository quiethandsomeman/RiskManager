package dao;

import java.util.ArrayList;

import model.RiskType;

public class RiskTypeDAO {

	public RiskTypeDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public ArrayList<RiskType> getAllType(){
		ArrayList<RiskType> list=new ArrayList<RiskType>();
		list.add(new RiskType("范围风险"));
		list.add(new RiskType("进度风险"));
		list.add(new RiskType("成本风险"));
		list.add(new RiskType("质量风险"));
		list.add(new RiskType("技术风险"));
		list.add(new RiskType("管理风险"));
		list.add(new RiskType("商业风险"));
		list.add(new RiskType("法律风险"));
		list.add(new RiskType("社会环境风险"));
		list.add(new RiskType("其他"));
		return list;
	}
	
	public ArrayList<RiskType> getAllTypeByTime(){
		
	}
}
