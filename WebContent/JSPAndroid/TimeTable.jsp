<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,framework.BaseForm"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%
Connection conn=null;
PreparedStatement pstmt=null;

String jdbc_driver="com.mysql.jdbc.Driver";
String jdbc_url="jdbc:mysql://52.79.223.148:3306/Beacon_Attend";
boolean isArray=true;
String returnVal="";


try
{
	Class.forName(jdbc_driver);
	
	conn=DriverManager.getConnection(jdbc_url,"root","wnssogur1!");
	
	String sql="select Course_Name,Start_Time,End_Time,Day from Takes,Student,course where Takes.s_ID=Student.ID and Student.Name=? and course.ID=Takes.course_ID"; 
	
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("Name"));
	//pstmt.setString(2,request.getParameter("Password"));
	ResultSet rs=pstmt.executeQuery();
	returnVal=new BaseForm().ResultsetToJson(rs,isArray);
	int i=1;
	
	out.println(returnVal);
	
	
	rs.close();
	pstmt.close();
	conn.close();
}catch(Exception e)

{
	System.out.println(e);
}
%>
