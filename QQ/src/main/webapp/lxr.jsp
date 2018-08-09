<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
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
				#dibu{
				height: 6.5rem;
				display: flex;
				justify-content: space-between;
				background: #31B0D5;
				line-height:10rem;
				font-size: 2.2rem;
				color: white;
				position:fixed;
				bottom: 0px;
				width: 100%;
			}
			#dibu p{
				font-size: 1.3rem;
				
			}
			
			#dibu>div{
				text-align: center;
			}
			#dibu>div>span{
				margin-top: 1rem;
				
			}
			body 
			{
			    background: url(img/09592I944-4.jpg) no-repeat center center fixed;
			    background-size: cover;
			}
			#content-wrapper{
				position: fixed;
				top:6.4rem;
				bottom: 5.1rem;
				width: 100%;
				/*background: #DDDDDD;*/
				overflow-y: scroll;
					
			}
			
			#ssl{
				height: 3rem;
				width: 100%;			
				margin-top: 1rem;
				opacity: 0.9;
				border: none;
				outline: none;
			}
			.firend{
				background: white;
				background-size: cover;
				height: 5rem;
				font-size: 2.5rem;
				font-family: "arial, helvetica, sans-serif";
				border-bottom: 0.5px solid #DDDDDD;					
				opacity: 0.8;	
					
			}
			.fh{
				font-size: 3.5rem;
				margin-left: 24rem;
				color: #ADADAD;
				
			}
			#lxdiv	{
				background: white;
				overflow-y: scroll;
				width: 100%;
			}
			#lxl{
				display: flex;
				justify-content: space-between;
			}
			#lxl>li{
				list-style-type: none;
				font-size: 2rem;
				color: #9D9D9D;
				margin-top: 1rem;
				
			}	
			.gxfl{
				height: 4rem;	
				width: 100%;			
				font-weight: bold;
				font-size: 1.8rem;
				line-height: 4rem;
			}
			.flfh{
				margin-left: 1rem;
				color: #ADADAD;
				font-size: 2rem;
			}
			.flnum	{
				position: absolute;
				left: 30rem;
			}
			.lxxh{
				margin-top: 1rem
			}
			
			
			.item{
				display: flex;
				height: 5.5rem;
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
				 margin-top: 0.7rem;
				 margin-left: 0.5rem;
			}
			.ncdiv{
				margin-top: 1rem;
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
			<img src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" height="50rem" width="50rem"  style="margin-top: 0.6rem;margin-left: 1rem;border-radius: 25rem;"/>
			<span id="">
				联系人
			</span>
			<span style="margin-right: 1rem;" id="tj">添加</span>
		</div>
		
		<div id="content-wrapper" style="background-color: rgba(0,0,0,0);height: auto;">
				<p style="text-align: center;">
					<input id="ssl" type="text" placeholder="搜索" />
				</p>
				<p class="firend">
					<span style="margin-left: 1rem;">新朋友</span>
					<span class="fh">></span>					
				</p>			
				<div id="lxdiv">
					<ul id="lxl">
						<li style="margin-left: 2rem;">好友</li>
						<li>群聊</li>
						<li>设备</li>
						<li>通讯录</li>
						<li style="margin-right: 2rem;">公众号</li>
					</ul>						
					<hr style="margin-top: -0.5rem;"/>
						
						<div id="fzl">
							<c:forEach items="${grou}" var="i">
									<div class="gxfl" style="margin-top: -1.3rem;position: relative;">
										<span class="flfh">+</span>
										<input type="hidden" value="${i.groupingId }" name="groupingId">
										<span style="margin-left: 0.5rem;" class="fzname">${i.groupingName }</span>
										<span class="flnum">0/0</span>
									</div>								
									
									<div class="hyl" style="height: auto;width: 100%; overflow-y: scroll;">
											
									
									</div>	
									<hr class="lxxh"/>	
							</c:forEach>					
						</div>
					

				</div>	
		</div>
		
		<input type="hidden" name="userId" value="${users.get(0).userId }">
		
		<div id="dibu">
			<div style="margin-left: 4rem">
				<span class="glyphicon glyphicon-comment"></span>
				<p style="margin-top: -3.7rem">消&nbsp;息</p>
			</div>
			<div>
				<span class="glyphicon glyphicon-user"></span>
				<p style="margin-top: -3.7rem;">联系人</p>
			</div>
			<div>
				<span class="glyphicon glyphicon-eye-open"></span>
				<p style="margin-top: -3.7rem;">看&nbsp;点</p>
			</div>
			<div style="margin-right: 4rem;">
				<span class="glyphicon glyphicon-star"></span>
				<p style="margin-top: -3.7rem;">动&nbsp;态</p>
			</div>
		</div>
		
		<link href="css/bootstrap.min.css" rel="stylesheet" />		
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/remstyle.js"></script>	
		<script src="js/zepto.js"></script>
		<script type="text/javascript">
			$(function(){									
				$("#dibu>div").on("tap",function(){
					var divs=$("#dibu>div");
					
					for (var i=0;i<divs.length;i++) {
						$(divs[i]).css("color","white");
					}
					$(this).css("color","blue");
				})
				
				$("#lxdiv").on("click",".flfh",function(){
					var ss=$(".flfh");
					var fh=$(this).text();
					var xb=$(".flfh").index(this);
					var cc=$(".hyl");
					if(fh=="+"){
						$(this).text("-");
						var groupingId=$(ss[xb]).parent().find("[name=groupingId]").val();						
						$.getJSON("api/friend/xshy",{groupingId:groupingId},function(data){
							$.each(data,function(){
								var newtr="<div class='item'><div class='content'><div class='dd'> <img class='touxiang' src='img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg' height='50rem' width='50rem' /></div><div class='ncdiv'><P class='nc'>"+this.friendName+"</P><P class='xx'>你是湖南人波</P></div></div></div>";
								$(cc[xb]).append(newtr);		
							})
							
						})
					}
					if(fh=="-"){
						$(this).text("+");
						$(cc[xb]).empty();
					}
					
					
				})
				
				$("#fzl").on("longTap",".gxfl",function(){
					/* var fz=$(".gxfl");
					var xb=$(".gxfl").index(this);
					alert(xb);
					var fzname=$(fz[xb]).find(".fzname").text();
					alert(fzname); */
					var userId=$("[name=userId]").val();
					window.location.href="User/bjfz?userId="+userId;
				})
				
				$("#tj").on("tap",function(){
					window.location.href="sshy.jsp";
				})
				
				
				$(".firend").on("tap",function(){
					window.location.href="tyhy.jsp";
				})
				
				
					
			})
			
		</script>
		
	</body>
</html>