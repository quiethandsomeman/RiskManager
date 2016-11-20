<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>变成问题的风险</title>
<style type="text/css">
	div.welcome{
		margin-left:0.5cm;
		height:50px;
		background-color:gray;
		color:white;
			
	}
	font.welcometext{
		margin-top:0.3cm;
		margin-left:0.5cm;
		float:left;
	}
</style>
<script type="text/javascript" language="javascript" src="My97DatePicker/WdatePicker.js"></script>
</head>
<body>
    
    <div class="welcome">
		<font size=5 class="welcometext" >
			RA MANAGER SYSTEM
		</font>
	</div>
    <form>  
        <div>
			<tr>
				<td><p>Start Time : </p></td>
				<td><input name="datetime1" id="datetime1" style="width: 100px;" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})"/></td>
				<td><p>End Time :</p></td>
				<td><input name="datetime2" id="datetime2" style="width: 100px;" onFocus="WdatePicker({readOnly:true,dateFmt:'yyyy-MM-dd'})"/></td>
				<td><input type=button value="search" onclick="lookup()"></input></td>
			</tr>
	    </div>
        
    </form>  
    
     <div style="width: 600px;min-height: 100px;margin:0 auto"></div>
     <div id="histogramChart" style="width: 800px;height:400px;"></div>
     <div style="min-height: 100px"></div>
     <div id="Chart1" style="width: 800px;height:400px;"></div>
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="./echarts.js"></script>
    <script>
    function lookup(){
        /* alert('hh'); */
        var startdate=document.getElementById("datetime1").value;
        var enddate=document.getElementById("datetime2").value;
        /* alert(startdate+"|"+enddate); */

        $.post(
                "../beproblemrisk",
                {
                    "date1":startdate,
                    "date2":enddate
                },
                function (data) {
                    var set=$.parseJSON(data);
                    /* alert(set[0]); */
                    var myChart = echarts.init(document.getElementById('histogramChart'));
                    var option = {
                            title: {
                                text: '此时间内成为问题的风险数'
                            },
                            tooltip: {},
                            legend: {
                                data:['问题数目']
                            },
                            xAxis: {
                                data: ["x1","x2","x3","x4","x5","x6","x7","x8","x9","x10"]
                            },
                            yAxis: {},
                            series: [{
                                name: '问题数目',
                                type: 'bar',
                                data: set
                            }]
                        };
                    /* var thearray=[["x1",set[0]],["x2",set[1]],
                                  ["x3",set[2]],["x4",set[3]],
                                  ["x5",set[4]],["x6",set[5]],
                                  ["x7",set[6]],["x8",set[7]],
                                  ["x9",set[8]],["x10",set[9]]
                                  ] */
                    var option2 = {
                    	    title : {
                    	        text: '成为问题的的风险类型百分比',
                    	        x:'center'
                    	    },
                    	    tooltip : {
                    	        trigger: 'item',
                    	        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    	    },
                    	    legend: {
                    	        orient: 'vertical',
                    	        left: 'left',
                    	        data: ['x1','x2','x3','x4','x5','x6','x7','x8','x9','x10']
                    	    },
                    	    series : [
                    	        {
                    	            name: 'source',
                    	            type: 'pie',
                    	            radius : '55%',
                    	            center: ['50%', '60%'],
                    	            data:[
                    	                {value:set[0], name:'x1'},
                    	                {value:set[1], name:'x2'},
                    	                {value:set[2], name:'x3'},
                    	                {value:set[3], name:'x4'},
                    	                {value:set[4], name:'x5'},
                    	                {value:set[5], name:'x6'},
                    	                {value:set[6], name:'x7'},
                    	                {value:set[7], name:'x8'},
                    	                {value:set[8], name:'x9'},
                    	                {value:set[9], name:'x10'}
                    	            ], 
                    	            /* data : thearray, */
                    	            itemStyle: {
                    	                emphasis: {
                    	                    shadowBlur: 10,
                    	                    shadowOffsetX: 0,
                    	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                    	                }
                    	            }
                    	        }
                    	    ]
                    	};

                        
                        myChart.setOption(option);
                        var mychart2=echarts.init(document.getElementById('Chart1'));
                        mychart2.setOption(option2);

                }
                );
    }
                      
    </script>
</body>
</html>