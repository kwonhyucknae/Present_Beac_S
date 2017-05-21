<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<title>Insert title here</title>
<style>
.tblGreen {
    border-collapse: collapse;
    text-align: center;
    font-family: 'Trebuchet MS';
}
.tblGreen td, th {
    font-size: 10pt;
    border: 1px solid #98bf21;
    height: 30px;
}
.tblGreen th {
    background-color:#A7C942;
    color:#ffffff;
    font-family: Georgia;
}
.tblGreen tr.alt td {
    color:#000000;
    background-color:#EAF2D3;
}
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
	<body>
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1 id="logo"><a href="index.html">Landed</a></h1>
					<nav id="nav">
						<ul>
							<li><a href="index.html">Home</a></li>
							<li>
								<a href="#">Layouts</a>
								<ul>
									<li><a href="left-sidebar.html">Left Sidebar</a></li>
									<li><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>
									<li>
										<a href="#">Submenu</a>
										<ul>
											<li><a href="#">Option 1</a></li>
											<li><a href="#">Option 2</a></li>
											<li><a href="#">Option 3</a></li>
											<li><a href="#">Option 4</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li><a href="elements.html">Elements</a></li>
							<li><a href="#" class="button special">Sign Up</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2>과목 선택</h2>
							<p>이번 학기 강의하는 과목을 선택하세요!</p>
							
							<form action="SearchCourse.jsp" method="get" >
							<span class='green_window'>
							<input type='text' class='input_text' name="Course_Name" />
							</span>
							<button type='submit' class='sch_smit'>검색</button>
							</form>
						</header>
						<div class="row 150%">

							</div>
							<div class="8u$ 12u$(medium) important(medium)">

								<!-- Content -->
									<section id="content2">
										<!--  <a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a>-->
									
<%
Connection conn=null;
PreparedStatement pstmt=null;

String jdbc_driver="com.mysql.jdbc.Driver";
String jdbc_url="jdbc:mysql://52.79.223.148:3306/Beacon_Attend";

try
{
	Class.forName(jdbc_driver);
	
	conn=DriverManager.getConnection(jdbc_url,"root","wnssogur1!");
	
	String sql="select Course_Name,Hakjum,Start_Time,End_Time From course WHERE Course_Name = ?"; 
	
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,request.getParameter("Course_Name"));
	//pstmt.setString(2,request.getParameter("Password"));
	ResultSet rs=pstmt.executeQuery();
	int i=1;
	
	while(rs.next())
	{
		%>
		<table class="tblGreen">
    <colgroup>
        <col width="100">
        <col width="100">
        <col width="150">
    </colgroup>
    <thead>
        <tr>
            <th>과목명</th>
            <th>학점</th>
            <th>수업시간</th>
            <th>추가</th>
        </tr>
    </thead>
    <tbody>
        <tr class="">
            <td><%= rs.getString(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %>,<%=rs.getString(4) %></td>
            <td><input type='BUTTON'Value='수강신청'></td>
            
        </tr>
    </tbody>   
</table>
<% 
		//out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+"<BR>");
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
									</section>

							</div>
						</div>
					</div>
				</div>

			<!-- Footer -->
				<footer id="footer">
					
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>

    
</body>
</html>