<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
	<base href="/QQ/"/>
	<style type="text/css" >
			body
			{
			    background: url(img/09592I944-4.jpg) no-repeat center center fixed;
			    -webkit-background-size: cover;
			    -moz-background-size: cover;
			    -o-background-size: cover;
			    background-size: cover;
			}
			
		</style>
	<body>
		<p style="font-size: 3rem;color: white;padding-left: 4rem;">QQ</p>
		<p style="text-align: center;font-size:6rem; margin-top:18rem;" >注册成功</p>
		<p style="text-align: center;margin-top: 5rem;font-size:3rem">
			您的账号:<span id="zh" style="color:white;">${user.userName }</span>	
		</p>
		<p style="margin-top: 2rem;text-align: center;">
			<span style="color:white;font-size: 3rem" onclick="dl()">立即登录</span>
		</p>
		<script src="js/jquery-1.12.4.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/remstyle.js"></script>
		<script type="text/javascript">
		function dl() {
			window.location.href="User/login";
			
		}
		
		
		</script>
	</body>
</html>