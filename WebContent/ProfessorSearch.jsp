<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Landed by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Left Sidebar - Landed by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
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
							
							<form action="JSPConnection/SearchCourse.jsp" method="get" >
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
</html>