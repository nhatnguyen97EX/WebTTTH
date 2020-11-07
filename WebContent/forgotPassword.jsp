<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>ForgotPassword</title>
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
				<!--Form Quên mật khẩu-->
			
				<form method="post" action="Forgot_Password">
                	<%
							if (request.getAttribute("mess") != null) {
						%>
						<p style="color: red"><%=request.getAttribute("mess")%></p>
						<%
							}
						%>
                    <div class="form-group">
				      <label >Tên đăng nhập:</label>
				      <!--AccountName-->
				      <input type="text" class="form-control" id="accountname" name="accountname" placeholder="Enter username"/>
				      <p><span class="error" id="username_error"></span></p>
				    </div>
				    <!--Submit tài khoản-->
                   <input class="btn btn-block btn-primary waves-effect" value="Xác nhận" type="submit">

                </form>
			</div>
		</div>
	</div>
	<!--end login-box-->
</body>
</html>