<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" %>
<%request.setCharacterEncoding("UTF-8"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<th width="500px">과목명</th>
<th width="100px">수강인원</th>
<th width="100px">시간</th>
<th width="100px">학점</th>
<th width="200px">비고</th>
</tr>
<tr>
<%
Connection conn=null;
PreparedStatement pstmt=null;

String jdbc_driver="com.mysql.jdbc.Driver";
String jdbc_url="jdbc:mysql://52.79.223.148:3306/Beacon_Attend";

try
{
	Class.forName(jdbc_driver);
	
	conn=DriverManager.getConnection(jdbc_url,"root","wnssogur1!");
	
	String sql="select Course_Name,Now_people,Max_people,Course_Time,Hakjum From course WHERE sort = 0"; 
	
	pstmt=conn.prepareStatement(sql);
	//pstmt.setString(1,request.getParameter("Course_Name"));
	//pstmt.setString(2,request.getParameter("Password"));
	ResultSet rs=pstmt.executeQuery();
	int i=1;
	
	while(rs.next())
	{
		%><tr><td><% out.println(rs.getString(1)); %></td><td><% out.println(rs.getString(2)+","+rs.getString(3)); %></td><td><% out.println(rs.getString(4)); %></td><td><% out.println(rs.getString(5));%></td><td><center><input type='BUTTON'Value='수강신청'></center></td> </tr><BR><%
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

<td>빅데이터</td>
<td>3/4</td>
<td>8,9</td>
<td>3</td>
<td><center><input type='BUTTON'Value='수강신청'></center></td> 
</tr>
</table>



</body>
</html>