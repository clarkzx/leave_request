<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>

<body>
<form id="form1" name="form1" method="post" action="insert.jsp">
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
int id = Integer.parseInt(request.getParameter("projectPorperty"));

/** 连接数据库参数1 **/
String driverName = "com.mysql.jdbc.Driver"; //驱动名称
String DBUser = "root"; //mysql用户名
String DBPasswd = "39991929"; //mysql密码
String DBName = "new_schema"; //数据库名
String TableName = "student_info";
String student_name = new String();

String connUrl = "jdbc:mysql://localhost:3306/" + DBName + "?user=" + DBUser + "&password=" + DBPasswd + "&useUnicode=true" + "&characterEncoding=UTF8";
Class.forName(driverName).newInstance();
Connection conn = DriverManager.getConnection(connUrl);
Statement stmt = conn.createStatement();

String select_sql = "select student_name from " + TableName + " where id =" + id;
ResultSet rst = stmt.executeQuery(select_sql);
rst.next();
student_name = rst.getString("student_name");

stmt.close();
conn.close();




String s[] = request.getParameterValues("week_list");   
String mon = new String();
String tue = new String();
String wed = new String();
String thu = new String();
String fri = new String();
String sat = new String();
String sun = new String();

if (s != null)
{
	for (int i=0; i < s.length; i++)
	{
		out.println(s[i]);
		if (s[i].equals("1"))
		{mon = request.getParameter("date00");
		}
		if (s[i].equals("2"))
		{tue = request.getParameter("date01");
		}
		if (s[i].equals("3"))
		{wed = request.getParameter("date02");
		}
		if (s[i].equals("4"))
		{thu = request.getParameter("date03");
		}
		if (s[i].equals("5"))
		{fri = request.getParameter("date04");
		}
		if (s[i].equals("6"))
		{sat = request.getParameter("date05");
		}
		if (s[i].equals("7"))
		{sun = request.getParameter("date06");
		}
	}
}
%>

<label>
学生学号：<input type = "text" readonly="readonly" name = "student_id" value=<%= id %>>

<br/>
<br/>
学生姓名：<input type = "text" readonly="readonly" name = "student_name" value =<%= student_name %>>
<br/>
<br/>
请假日期：
<br/>
<br/>
<input type="text" id=date001 readonly="readonly" name ="date_week" value = <%= mon %>>
<br/>
<input type="text" id=date002 readonly="readonly" name ="date_week" value = <%= tue %>>
<br/>
<input type="text" id=date003 readonly="readonly" name ="date_week" value = <%= wed %>>
<br/>
<input type="text" id=date004 readonly="readonly" name ="date_week" value = <%= thu %>>
<br/>
<input type="text" id=date005 readonly="readonly" name ="date_week" value = <%= fri %>>
<br/>
<input type="text" id=date006 readonly="readonly" name ="date_week" value = <%= sat %>>
<br/>
<input type="text" id=date007 readonly="readonly" name ="date_week" value = <%= sun %>>
<br/>
<input type="submit" name="Submit" value="确定" />
</label>
<br/>


</form>
<script type='text/javascript'>
alert("111");
if (document.getElementById("rybh0").checked)
{document.getElementById("date00").value="bold";
	}
if (!document.getElementById("rybh1").checked)
{document.getElementById("date01").value="bold";
	}
if (document.getElementById("rybh2").checked)
{document.getElementById("date002").value="bold";
	}
if (document.getElementById("rybh3").checked == true)
{document.getElementById("rybh3").value = 1;
	}
if (document.getElementById("rybh4").checked == true)
{document.getElementById("rybh4").value = 1;
	}
if (document.getElementById("rybh5").checked == true)
{document.getElementById("rybh5").value = 1;
	}
if (document.getElementById("rybh6").checked == true)
{document.getElementById("rybh6").value = 1;
	}


var monn = document.getElementById("date001").value;
document.write(monn);
if (<%= mon %> !== null){document.write("Monday");}
	
	else{document.getElementById("date001").style.visibility='hidden';}

if (<%= tue %> !== null){document.write("Tuesday");}
	else{document.getElementById("date002").style.visibility='hidden';}
	
if (document.getElementById("date003").value !== null)
	else{document.getElementById("date003").style.visibility='hidden';}
	
if (document.getElementById("date004").value !== null)
	else{document.getElementById("date004").style.visibility='hidden';}
	
if (document.getElementById("date005").value !== null)
	else{document.getElementById("date005").style.visibility='hidden';}
	
if (document.getElementById("date006").value !== null)
	else{document.getElementById("date006").style.visibility='hidden';}
	
if (document.getElementById("date007").value !== null)
	else{document.getElementById("date007").style.visibility='hidden';}
	
	
</script>
</body>

</html>