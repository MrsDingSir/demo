<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
			#dibu{
				height: 5.5rem;
				display: flex;
				justify-content: space-between;
				background: #31B0D5;
				line-height: 5.5rem;
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
			.hyzt{
				margin-left: 10rem;
			}
			.hyzt>p{
				line-height:5.5rem ;
				font-size: 2rem;
				
			}
			.hyzt>p>span>a{
				text-decoration: none;
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

	</style>
	<body>
			
		<div id="toubu">
			<span><a href="#" style="color: white;">返回</a></span>
			<span id="">
				好友通知
			</span>
			<span style="margin-right: 1rem;">+</span>
		</div>
	

		<div class="hyl" style="height: auto;width: 100%; overflow-y: scroll;">
									
									<input type="hidden" value="${users.get(0).userId}" name="pasvuserId"> 
							</div>
							<link href="css/bootstrap.min.css" rel="stylesheet" />		
							<script src="js/jquery-3.2.1.min.js"></script>
							<script src="js/remstyle.js"></script>	
							<script src="js/zepto.js"></script>
							<script>
								$(function() {
									var pasvuserId=$("[name=pasvuserId]").val();
									$.getJSON("api/friendApp/hytz",{pasvuserId:pasvuserId},function(data){
										$(".hyl").empty();
										var i=0;		
										$.each(data,function(){
											i++;
											var newtr="<div class='item'><div class='content'><div class='dd'> <img class='touxiang' src='img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg' height='50rem' width='50rem' /></div><div class='ncdiv'><P class='nc'>"+this.remark+"</P><P class='xx'>请求加好友</P></div><div class='hyzt'><p class='zt'></p><p class='zts'><span><a class='ty'>同意</a><input type='hidden' value="+this.applyId+" name='applyId'></span><span><a class='gun'>拒绝</a></span></p></div></div></div>";
										
											$(".hyl").append(newtr);
											if(this.isOk==1){							
												$(".zt").eq(i-1).text("已同意");
												$(".zts").eq(i-1).hide();
											}
											if(this.isOk==2){
												$(".zt").eq(i-1).text("已拒绝");
												$(".zts").eq(i-1).hide();
											}
											
										})
										
									})
									
									$(".hyl").on("click",".ty",function(){
										var num=$(".ty");
										var xb=$(".ty").index(this);
										var applyId=$(num[xb]).parent().find("[name=applyId]").val();
										alert(applyId);
										var isOk=1;
										window.location.href="User/szhyfz?applyId="+applyId+"&userId="+pasvuserId;
										
										/* $.post("api/friendApp/gbzt",{isOk:isOk,applyId:applyId},function(data){											
										}) */
										
									})
									
									$(".hyl").on("click",".gun",function(){
										var num=$(".gun");
										var xb=$(".gun").index(this);
										var applyId=$(num[xb]).parent().parent().find("[name=applyId]").val();
										$(num[xb]).parent().parent().parent().find(".zt").text("已拒绝");
										$(num[xb]).parent().parent().hide();
										alert(applyId);
										var isOk=2;
										
										
										
										
										$.post("api/friendApp/gbzt",{isOk:isOk,applyId:applyId},function(data){								
											
										})
										
									})
								})
								
								
							
							
						
							</script>
		
		
	</body>
</html>