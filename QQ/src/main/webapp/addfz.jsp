<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<base href="/QQ/"/>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
	<style>
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
			#addp{
				display: flex;
			}
			#jh{
				height: 4rem;
				width: 4rem;
				border: 0.1rem solid #C0C0C0;
				text-align: center;
				line-height: 4rem; 
				font-size: 3rem;
				border-radius: 1rem;
				color: #C0C0C0;
				margin-left: 1rem;
				margin-top: 1rem;
			}
			.hyl>div{
				margin-top: 2rem;			
			}
			
			#shuoshuo-bg{
				position: fixed;
				width: 100%;
				top: 6.5rem;
				bottom: 0;
				/*半透明背景*/
				background: rgba(0,0,0,0.5);
				display: none;
				z-index: 999;
			}
			#shoushuo{
				width: 100%;
				height: 15rem;
				background: white;				
			}
			#shoushuo>p{
				text-align: center;				
			}
			#fzm{
				height: 3rem;
				width: 70%;
				border: none;
				outline: none;
				background-color: #C7DDEF;
			}
			.al{
				height: 4rem;
				width: 6rem;
				background-color: #31B0D5;
			}
			
			
			#shuoshuo1-bg{
				position: fixed;
				width: 100%;
				top: 6.5rem;
				bottom: 0;
				/*半透明背景*/
				background: rgba(0,0,0,0.5);
				display: none;
				z-index: 999;
			}
			#shoushuo1{
				width: 100%;
				height: 15rem;
				background: white;				
			}
			#shoushuo1>p{
				text-align: center;				
			}
			#fzm1{
				height: 3rem;
				width: 70%;
				border: none;
				outline: none;
				background-color: #C7DDEF;
			}
			.al1{
				height: 4rem;
				width: 6rem;
				background-color: #31B0D5;
			}
			
			
	</style>
	<body>
		<div id="toubu">
			<span style="margin-left: 12rem;">
				分组管理
			</span>
			<span style="margin-right: 2rem;" onclick="ff()">完成</span>
		</div>
		<div id="addp">
		<div id="jh">+</div>
		<div style="margin-top: 2rem;margin-left: 1rem;font-size: 1.5rem; color:#C0C0C0 ;">添加分组</div>
		</div>
		
		<!--
            	作者：offline
            	时间：2018-07-04
            	描述：发说说
            -->
            <div id="shuoshuo-bg">
				<form action="User/addfz" method="post">
				<div id="shoushuo">
					<p style="font-size: 2rem;">添加分组</p>
					<p style="font-size: 1.5rem;">请输入新的分组名称</p>
					<p><input id="fzm" name="groupingName" type="text" placeholder="请输入分组名"/></p>
					<p>
						<input id="qx" class="al" type="button" value="取消" />	
						<input class="al" type="submit" value="确定" />
							<input type="hidden" name="userId" value="${users.get(0).userId }">				
					</p>				
				</div>
				</form>
			</div>
			
			<div id="shuoshuo1-bg">
				<form action="User/xgfz" method="post">
				<div id="shoushuo1">
					<p style="font-size: 2rem;">编辑分组</p>
					<p style="font-size: 1.5rem;">请输入新的分组名称</p>
					<p><input id="fzm1" name="groupingName" type="text" placeholder="请输入分组名"/></p>
					<input type="hidden" name="groupingId">
					<input type="hidden" name="userId" value="${users.get(0).userId }">				
					<p>
						<input id="qx1" class="al1" type="button" value="取消" />	
						<input class="al1" type="submit" value="确定" />										
					</p>
					
				</div>
				</form>
			</div>
		
		<hr />
		<div id="fzl" style="overflow-y: scroll; width: 100%; margin-top: -2rem;">
			<c:forEach items="${grou }" var="i">
				<div class="hyl" style="display: flex;justify-content: space-between;width: 100%;border-bottom: 0.1rem solid #C0C0C0 ;height: 6rem;">
					<div style="height: 2rem; width: 2rem; background-color: red;text-align: center;line-height: 1.8rem;color: white; font-size: 3rem;border-radius: 1rem;">-</div>
					<input type="hidden" value="${i.groupingId}" name="groupingId">
					<div style="font-size: 2rem; margin-left: -20rem;" class="fzname">${i.groupingName}</div>
					<div style="background-color: #DD0000;height: 3rem; width: 4rem; color: white;text-align: center;line-height: 3rem;"><a href="User/scfz?userId=${i.userId}&groupingId=${i.groupingId}">删除</a></div>
				</div>
			</c:forEach>
			
		
		</div>
		<link href="css/bootstrap.min.css" rel="stylesheet" />		
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/remstyle.js"></script>	
		<script src="js/zepto.js"></script>
		<script>
			$(function(){
				$("#addp").on("tap",function(){
					$("#shuoshuo-bg").show(300);
					$("#shoushuo").animate({
						"margin-top":0
					},200);
					
				});
				$("#qx").on("tap",function(){
					$("#shuoshuo-bg").hide();				
				})
				
				$("#qx1").on("tap",function(){
					$("#shuoshuo1-bg").hide();				
				})
				
				$("#fzl").on("longTap",".hyl",function(){
					var fz=$(".hyl");
					var xb=$(".hyl").index(this);
					alert(xb);
					var fzname=$(fz[xb]).find(".fzname").text();
					var groupingId=$(fz[xb]).find("[name=groupingId]").val();
					alert(fzname);
					alert(groupingId);
					$("#shuoshuo1-bg").show(300);
					$("#fzm1").val(fzname);
					$("[name=groupingId]").val(groupingId);
					$("#shoushuo1").animate({
						"margin-top":0
					},200);
					
				})
				
				
				
				
				
			})
			function ff() {
					var userId=$("[name=userId]").val();					
					window.location.href="User/lxr?userId="+userId;		
				}
		</script>
	</body>
</html>