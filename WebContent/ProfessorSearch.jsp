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
							<h2>���� ����</h2>
							<p>�̹� �б� �����ϴ� ������ �����ϼ���!</p>
							<form>
							<span class='green_window'>
							<input type='text' class='input_text' />
							</span>
							<button type='submit' class='sch_smit'>�˻�</button>
							</form>
						</header>
						<div class="row 150%">

							</div>
							<div class="8u$ 12u$(medium) important(medium)">

								<!-- Content -->
									<section id="content2">
										<a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a>
										<%@include file="JSPConnection/SearchCourse.jsp" %>
										
										<h3>Dolore Amet Consequat</h3>
										<p>Aliquam massa urna, imperdiet sit amet mi non, bibendum euismod est. Curabitur mi justo, tincidunt vel eros ullamcorper, porta cursus justo. Cras vel neque eros. Vestibulum diam quam, mollis at magna consectetur non, malesuada quis augue. Morbi tincidunt pretium interdum est. Curabitur mi justo, tincidunt vel eros ullamcorper, porta cursus justo. Cras vel neque eros. Vestibulum diam.</p>
										<p>Vestibulum diam quam, mollis at consectetur non, malesuada quis augue. Morbi tincidunt pretium interdum. Morbi mattis elementum orci, nec dictum porta cursus justo. Quisque ultricies lorem in ligula condimentum, et egestas turpis sagittis. Cras ac nunc urna. Nullam eget lobortis purus. Phasellus vitae tortor non est placerat tristique.</p>
										<h3>Sed Magna Ornare</h3>
										<p>In vestibulum massa quis arcu lobortis tempus. Nam pretium arcu in odio vulputate luctus. Suspendisse euismod lorem eget lacinia fringilla. Sed sed felis justo. Nunc sodales elit in laoreet aliquam. Nam gravida, nisl sit amet iaculis porttitor, risus nisi rutrum metus.</p>
										<ul>
											<li>Faucibus orci lobortis ac adipiscing integer.</li>
											<li>Col accumsan arcu mi aliquet placerat.</li>
											<li>Lobortis vestibulum ut magna tempor massa nascetur.</li>
											<li>Blandit massa non blandit tempor interdum.</li>
											<li>Lacinia mattis arcu nascetur lobortis.</li>
										</ul>
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