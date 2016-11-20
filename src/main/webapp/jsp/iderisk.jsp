<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>被识别的风险</title>
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
                "../identityrisk",
                {
                    "date1":startdate,
                    "date2":enddate
                },
                function (data) {
                    var col=$.parseJSON(data);
                    var setname=col.b;
                    var setnum=col.a;
                    
                    /* alert(set[0]); */
                    var myChart = echarts.init(document.getElementById('histogramChart'));
                    //alert(setname[1]);
                    var option = {
                            title: {
                                text: '此时间内被识别的风险数'
                            },
                            tooltip: {},
                            legend: {
                                data:['风险数目']
                            },
                            xAxis: {
                            	axisLabel:{
                                    interval:0,  
                                    rotate:-45   
                                  },  
                                data: [setname[0],setname[1],setname[2],setname[3],setname[4],setname[5],setname[6],setname[7],setname[8],setname[9]]
                            },
                            yAxis: {},
                            series: [{
                                name: '风险数目',
                                type: 'bar',
                                data: setnum
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
                    	        text: '被识别的风险类型百分比',
                    	        x:'center'
                    	    },
                    	    tooltip : {
                    	        trigger: 'item',
                    	        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    	    },
                    	    legend: {
                    	        orient: 'vertical',
                    	        left: 'left',
                    	        data: setname
                    	    },
                    	    series : [
                    	        {
                    	            name: 'source',
                    	            type: 'pie',
                    	            radius : '55%',
                    	            center: ['50%', '60%'],
                    	            data:[
                    	                {value:setnum[0], name:setname[0]},
                    	                {value:setnum[1], name:setname[1]},
                    	                {value:setnum[2], name:setname[2]},
                    	                {value:setnum[3], name:setname[3]},
                    	                {value:setnum[4], name:setname[4]},
                    	                {value:setnum[5], name:setname[5]},
                    	                {value:setnum[6], name:setname[6]},
                    	                {value:setnum[7], name:setname[7]},
                    	                {value:setnum[8], name:setname[8]},
                    	                {value:setnum[9], name:setname[9]}
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