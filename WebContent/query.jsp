<span style="font-size:12px;"><span style="font-size:14px;"><%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%@ page contentType="text/html;charset=utf-8"%>  
<html>  
<head>  
<style type="text/css">  
table {  
    border: 2px #CCCCCC solid;  
    width: 360px;  
}  
  
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;  
}  
</style>  
</head>  
<body>  
    <%  
        //驱动程序名   
        String driverName = "com.mysql.jdbc.Driver";  
        //数据库用户名   
        String userName = "root";  
        //密码   
        String userPasswd = "39991929";  
        //数据库名   
        String dbName = "new_schema";  
        //表名   
        String tableName = "new_table2";  
        //联结字符串   
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql1 = "SELECT * FROM " + tableName;  
        ResultSet rs = statement.executeQuery(sql1);  
    %>  
    <br>  
    <br>  
    <table align="center">  
        <tr>  
            <th>  
                <%  
                    out.print("学号");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("学生姓名");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("家长姓名");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("日期");  
                %>  
            </th>  
        </tr>  
  
        <%  
            while (rs.next()) {  
        %>  
        <tr>  
            <td>  
                <%  
                    out.print(rs.getString(1));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(2));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(3));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(4));  
                %>  
            </td>  
        </tr>  
        <%  
            }  
        %>  
    </table>  
    <div align="center">  
        <br> <br> <br>  
        <%  
            out.print("数据查询成功，恭喜你");  
        %>  
    </div>  
    <%  
        rs.close();  
        statement.close();  
        connection.close();  
    %>  
</body>  
</html></span><span style="font-size:24px;color: rgb(255, 0, 0);">  
</span></span>  