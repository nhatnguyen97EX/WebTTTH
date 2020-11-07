<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--bootstrap & Jquery-->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--CSS-->
<link rel="stylesheet" type="text/css" href="css/mycssLogin.css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">
<script src="js/myjsLogin.js"></script>
<script src="js/md5.js"></script>
</head>
<body class="login-page light">
	<div class="login-box">
		<div class="card">
			<div class="body">
				<div class="row">
					<div class=" image_logo">
						<div class="login-logo align-center">
							<a href="TrangChu"> <img src="images/LOGO_trang.jpg" alt=""
								class="img-responsive img-circle align-center">
							</a>
							<p>Quên mật khẩu</p>
						</div>
					</div>
				</div>
				<!--Form nhập mã xác thực-->
				<form method="post" action="CheckCapcha">
					<%
						if (request.getAttribute("thongbao1") != null) {
					%>
					<p style="color: red"><%=request.getAttribute("thongbao1")%></p>
					<%
						}
					%>
					<div class="form-group">
						<label>Nhập mã xác thực</label>
						<!--Code-->
						<input type="text" class="form-control" id="capcha2"
							name="capcha2" placeholder="Enter code" />
						<p>
							<span class="error" id="username_error"></span>
						</p>
					</div>
					<div class="form-group">
						<label>Nhập mật khẩu mới</label>
						<!--password-->
						<input type="password" class="form-control" id="password"
							name="password" placeholder="Enter password" />
						<p>
							<span class="error" id="password0_error"></span>
						</p>
						</p>
					</div>
					<div class="form-group">
						<label>Xác nhận lại mật khẩu</label>
						<!--password-->
						<input type="password" class="form-control" id="password2"
							name="password2" placeholder="Enter again password" />
						<p>
							<span class="error" id="password1_error"></span>
						</p>
					</div>
					<input type="hidden" name="capcha"
						value="<%=request.getAttribute("capcha")%>"> <input
						type="hidden" name="accountname"
						value="<%=request.getAttribute("accountname")%>">
					<!--Submit tài khoản-->
					<input class="btn btn-block btn-primary waves-effect"
						value="Xác nhận" type="submit">
				</form>
			</div>
		</div>
	</div>
	<!--end login-box-->
</body>
</html>