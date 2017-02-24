<!DOCTYPE html>
<%@page  pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="form1" name="form1" method="post" action="confirm.jsp" >
<p id="student_n">学生学号：</p>
<label>
<br/>


<select id="projectPorperty" name="projectPorperty">  
    <option value="01">01</option>  
    <option value="02">02</option>  
    <option value="03">03</option>
    <option value="04">04</option>
    <option value="05">05</option>
    <option value="06">06</option>
    <option value="07">07</option>
    <option value="08">08</option>
    <option value="09">09</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
    <option value="13">13</option>
    <option value="14">14</option>
    <option value="15">15</option>
    <option value="16">16</option>
    <option value="17">17</option>
    <option value="18">18</option>
    <option value="19">19</option>
    <option value="20">20</option>
    <option value="21">21</option>
    <option value="22">22</option>
    <option value="23">23</option>
    <option value="24">24</option>
    <option value="25">25</option>
    <option value="26">26</option>
    <option value="27">27</option>
    <option value="28">28</option>
    <option value="29">29</option>
    <option value="30">30</option>
    <option value="31">31</option>
    <option value="32">32</option>
    <option value="33">33</option>
    <option value="34">34</option>
    <option value="35">35</option>
    <option value="36">36</option>
    <option value="37">37</option>
    <option value="38">38</option>
</select> 
<script>
document.form.projectPorperty.value = '${user.projectPorperty}'; 
</script>
<br/>
<br/>
<br/>

请假日期：
<br/>
星期一<input type="checkbox" name = "week_list"  value=1 id="rybh0" />
<input type="text" name="date00"   id="date00" readonly="readonly">
<br/>
星期二<input type="checkbox" name = "week_list" value=2 id="rybh1" />
<input type="text" name="date01" id="date01" readonly="readonly">
<br/>
星期三<input type="checkbox" name = "week_list" value=3 id="rybh2" />
<input type="text"  name="date02"   id="date02" readonly="readonly">
<br/>
星期四<input type="checkbox" name = "week_list" value=4 id="rybh3" />
<input type="text"  name="date03"   id="date03" readonly="readonly">
<br/>
星期五<input type="checkbox" name = "week_list" value=5 id="rybh4" />
<input type="text"  name="date04"   id="date04" readonly="readonly">
<br/>
星期六<input type="checkbox" name = "week_list" value=6 id="rybh5" />
<input type="text"  name="date05"   id="date05" readonly="readonly">
<br/>
星期日<input type="checkbox" name = "week_list" value=7 id="rybh6" />
<input type="text"  name="date06"   id="date06" readonly="readonly">
<br/>
</label>



<br/>
<br/>

<input type="submit" name="Submit" value="提交" />

<br/>

</form>
</body>

<script>
function GetDateStr(AddDayCount) {
    var dd = new Date();
    dd.setDate(dd.getDate()+AddDayCount);
    var y = dd.getFullYear();
    var m = dd.getMonth()+1;


    var d = dd.getDate();
    
    if (dd.getMonth() < 10){
    	m = '0'+m;
    }
    if (dd.getDate() < 10){
    	d = '0'+dd.getDate();
    }
    
    

    return y+"-"+m+"-"+d;
    
    
}


var week = new Date().getDay();  

var date1 = new Date().toLocaleDateString();
switch (week)
	{
	case 0:
		document.getElementById("rybh0").style.visibility='hidden';
		document.getElementById("rybh1").style.visibility='hidden';
		document.getElementById("rybh2").style.visibility='hidden';
		document.getElementById("rybh3").style.visibility='hidden';
		document.getElementById("rybh4").style.visibility='hidden';
		document.getElementById("rybh5").style.visibility='hidden';
		
		document.getElementById("date06").value = GetDateStr(0);
	break;
	
	case 1:
		document.getElementById("date00").value = GetDateStr(0);
		document.getElementById("date01").value = GetDateStr(1);
		document.getElementById("date02").value = GetDateStr(2);		
		document.getElementById("date03").value = GetDateStr(3);
		document.getElementById("date04").value = GetDateStr(4);
		document.getElementById("date05").value = GetDateStr(5);
		document.getElementById("date06").value = GetDateStr(6);
	break;
	case 2:
		document.getElementById("rybh0").style.visibility='hidden';
		document.getElementById("date01").value = GetDateStr(0);
		document.getElementById("date02").value = GetDateStr(1);		
		document.getElementById("date03").value = GetDateStr(2);
		document.getElementById("date04").value = GetDateStr(3);
		document.getElementById("date05").value = GetDateStr(4);
		document.getElementById("date06").value = GetDateStr(5);
	break;
	
	case 3:
		document.getElementById("rybh0").style.visibility='hidden';
		
		document.getElementById("rybh1").style.visibility='hidden';
		
		document.getElementById("date02").value = GetDateStr(0);		
		document.getElementById("date03").value = GetDateStr(1);
		document.getElementById("date04").value = GetDateStr(2);
		document.getElementById("date05").value = GetDateStr(3);
		document.getElementById("date06").value = GetDateStr(4);
	break;
	
	case 4:
		document.getElementById("rybh0").style.visibility='hidden';	
		document.getElementById("rybh1").style.visibility='hidden';
		document.getElementById("rybh2").style.visibility='hidden';
		
		document.getElementById("date03").value = GetDateStr(0);
		document.getElementById("date04").value = GetDateStr(1);
		document.getElementById("date05").value = GetDateStr(2);
		document.getElementById("date06").value = GetDateStr(3);
	break;
	
	case 5:
		document.getElementById("rybh0").style.visibility='hidden';	
		document.getElementById("rybh1").style.visibility='hidden';	
		document.getElementById("rybh2").style.visibility='hidden';	
		document.getElementById("rybh3").style.visibility='hidden';	
		

		document.getElementById("date04").value = GetDateStr(0);
		document.getElementById("date05").value = GetDateStr(1);
		document.getElementById("date06").value = GetDateStr(2);
	break;
	
	case 6:
		document.getElementById("rybh0").style.visibility='hidden';	
		document.getElementById("rybh1").style.visibility='hidden';	
		document.getElementById("rybh2").style.visibility='hidden';	
		document.getElementById("rybh3").style.visibility='hidden';	
		document.getElementById("rybh4").style.visibility='hidden';	
		
		document.getElementById("date05").value = GetDateStr(0);
		document.getElementById("date06").value = GetDateStr(1);
	break;
	}
</script>
</html>