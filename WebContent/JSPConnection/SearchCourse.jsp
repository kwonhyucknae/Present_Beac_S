<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn=null;
PreparedStatement pstmt=null;

String jdbc_driver="com.mysql.jdbc.Driver";
String jdbc_url="jdbc:mysql://52.79.223.148:3306/Beacon_Attend";

try
{
	Class.forName(jdbc_driver);
	
	conn=DriverManager.getConnection(jdbc_url,"root","wnssogur1!");
	
	String sql="select Course_Name,Hakjum,Course_Time From course WHERE Course_Name = ?"; 
	
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("Course_Name"));
	//pstmt.setString(2,request.getParameter("Password"));
	ResultSet rs=pstmt.executeQuery();
	int i=1;
	
	while(rs.next())
	{
		out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+"<BR>");
		i++;
	}
	
	rs.close();
	pstmt.close();
	conn.close();
}catch(Exception e)

{
	System.out.println(e);
}
%>
    
</body>
</html>