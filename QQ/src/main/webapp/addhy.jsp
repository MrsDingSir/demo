<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
	<base href="/QQ/"/>
	<style type="text/css">
			*{
				margin: 0px;
				padding: 0px;
			}
			#toubu{
				height: 6.5rem;
				display: flex;
				justify-content: space-between;
				background: #31B0D5;
				line-height: 6.5rem;
				font-size: 2.2rem;
				color: white;
			}
		
			
			body 
			{
			    background: white;
			    background-size: cover;
			}
				
				.item{
				display: flex;
				height: 6.5rem;
				overflow: hidden;
				border-top: 0.5px solid #DDDDDD;
			}
			.item>.content{
				min-width: 100%;
				background-color: white;
				display: flex;
				opacity: 0.9;
			}
			.dd>.touxiang{
				border-radius: 25rem;
				 margin-top: 2rem;
				 margin-left: 1rem;
			}
			.ncdiv{
				margin-top: 2rem;
				margin-left: 2rem;
			}
			
			.ncdiv>.nc{
				font-size: 1.6rem;
			}
			.ncdiv>.xx{
				font-size: 1.5rem;
				color: #C0C0C0;
				margin-top: -1rem;
			}		
		
	</style>
	<body>
		<div id="toubu">
			<span style="margin-left: 12rem;">
				添加好友
			</span>
			<span style="margin-right: 2rem;" onclick="fs()">发送</span>
		</div>
		<div>
			<div class="item">
				<div class="content">
						<div class="dd"> 
								<img class="touxiang" src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" height="50rem" width="50rem" />
						</div>	
						<c:forEach items="${Userlist }" var="i">
						<div class="ncdiv">
							<input type="hidden" value="${i.userId }" name="pasvuserId">
							<P class="nc">${i.nickName }</P>
							<P class="xx">${i.userName }</P>
						</div>	
						</c:forEach>								
				</div>
			</div>
			<p style="font-size: 1.5rem;color:#ADADAD;margin-top: 2rem;margin-left: 1rem;">填写验证信息</p>	
			<textarea id="yzxx" style="height:7rem;width: 100%; border:0.1rem solid gainsboro;font-size: 1.5rem;"></textarea>
				
			
			<p style="font-size: 1.5rem;color:#ADADAD;margin-top: 1.5rem;margin-left: 1rem;">设置备注</p>
			<p><input name="pasvuserName" type="text" placeholder="备注" style="width: 100%;height: 3rem;"/></p>
			<p style="font-size: 1.5rem;color:#ADADAD;margin-top: 2rem;margin-left: 1rem;">设置分组</p>
			<select id="fz" style="width: 70%; height: 3rem;">
				<c:forEach items="${groulist }" var="i">
					<option style="width: 80%;" value="${i.groupingId }">${i.groupingName }</option>
				</c:forEach>
			</select>
		</div>
		<link href="css/bootstrap.min.css" rel="stylesheet" />		
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/remstyle.js"></script>	
		<script src="js/zepto.js"></script>
		<script type="text/javascript">
				function fs() {
					var remark=$("#yzxx").val();					
					var pasvuserId=$("[name=pasvuserId]").val();
					var pasvuserName=$("[name=pasvuserName]").val();
					var groupingId=$("#fz").val();
					alert(groupingId);
					var data={
							remark:remark,	
							pasvuserId:pasvuserId,	
							pasvuserName:pasvuserName,
							groupingId:groupingId
							
					}
					
					$.ajax({
						type:"post",
						url:"api/friendApp",
						contentType:"application/json",
						data:JSON.stringify(data),
						success:function(data){
							alert("发送成功！");
						},
						error:function(xhr){
							alert(xhr.responseText);
						}
					});		
					
				}
		
		
		</script>
	</body>
</html>