<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Left Sidebar - Landed by HTML5 UP</title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>

		#content2{
		//position:absolute;
		left:40%;
		margin-left:200px;
		}
		.green_window {
		display: inline-block;
		width: 366px; height: 34px;
		border: 3px solid #2db400;
		background: white;
		}
		.input_text {
		width: 348px; height: 21px;
		margin: 6px 0 0 9px;
		border: 0;
		line-height: 21px;
		font-weight: bold;
		font-size: 16px;
		outline: none;
		}
	.sch_smit {
		width: 54px; height: 40px;
		margin: 0; border: 0;
		vertical-align: top;
		background: #22B600;
		color: white;
		font-weight: bold;
		border-radius: 1px;
		cursor: pointer;
	}
	.sch_smit:hover {
		background: #56C82C;
	}
		</style>
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
	
	String sql="select Student.Name,present,jigak,gyulsuk,jotae From Student,Takes,course WHERE course.Course_Name = ? and course.ID = Takes.course_ID and Student.ID = s_ID"; 
	
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("Course_Name"));
	//pstmt.setString(2,request.getParameter("Password"));
	ResultSet rs=pstmt.executeQuery();
	int i=1;
	
	while(rs.next())
	{
		
		//out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+"<BR>");
		%><sapn style="color:white"><%= rs.getString(1) %></sapn><% 
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