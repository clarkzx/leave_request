<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=UTF-8");
%>
<html>
<head>
<title>add message into table </TITLE>
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("student_id"));

String s[] = request.getParameterValues("date_week"); 
String s1[] = new String[20];

java.util.Date date=new java.util.Date();
String datetime=new Timestamp(date.getTime()).toString();

/** 连接数据库参数 **/
String driverName = "com.mysql.jdbc.Driver"; //驱动名称
String DBUser = "root"; //mysql用户名
String DBPasswd = "39991929"; //mysql密码
String DBName = "new_schema"; //数据库名
String TableName = "this_week";
String connUrl = "jdbc:mysql://localhost:3306/" + DBName + "?user=" + DBUser + "&password=" + DBPasswd + "&useUnicode=true" + "&characterEncoding=UTF8";
Class.forName(driverName).newInstance();
Connection conn = DriverManager.getConnection(connUrl);
Statement stmt = conn.createStatement();



if (s != null)
{
	for (int i=0; i < s.length; i++)
	{
		java.util.Date date01 = new java.util.Date();
		java.sql.Date sqlDate;
		if (s[i] != ""){
		try  
		{  
		    java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy-MM-dd"); 
		    date01 = sdf.parse(s[i]);
		}  
		catch (java.text.ParseException e)  
		{  
		    System.out.println(e.getMessage());  
		}  
		
		sqlDate = new java.sql.Date(date01.getTime()); 
		String insert_sql = "insert into " + TableName + " values('" + id + "', '"+ sqlDate +"', '"+ datetime + "')";
		try 
		{
			stmt.execute(insert_sql);
		}
		catch(Exception e) 
		{
			e.printStackTrace();
		}
		}
	}
}


stmt.close();
conn.close();
out.print("ok!");
%>
</body>
</html>