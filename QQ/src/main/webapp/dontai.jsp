<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="/QQ/"/>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style>
			*{
				margin: 0px;
				padding: 0px;
			}
			body{
				background: url(img/rBACJlRdoTazKIeRAAJczVdDutw389.jpg) no-repeat center center fixed;
				background-size: cover;
			}
			
			#toubu{
				height: 6.5rem;
				display: flex;
				justify-content: space-between;
				line-height: 6.5rem;
				font-size: 2.2rem;
				color: white;
				position: fixed;
				top:0;	
				width: 100%;
				background: rgba(0,0,0,0.5);		
			}
			.zd{
				font-weight: bold;
			}
		    
		    #content-wrapper{
					position: fixed;
					top:0rem;
					bottom: 0rem;
					width: 100%;
					overflow-y: scroll;
					overflow-x: hidden;
			}
			#dttx{
				margin-top: 7rem;
			}
			
			#dttx>img{
				height: 7rem;
				width: 7rem;
				border-radius: 3.5rem;
				margin-left: 2rem;
				margin-top: 4rem;
			}
			#xxl>ul{
				display: flex;
				justify-content: space-between;
				margin-top: 2rem;
			}
			#xxl>ul li{
				list-style-type: none;
				color: white;				
				font-size: 1.5rem;
				
			}
			#ssdiv{
				height: 150rem;
				width: 100%;
				margin-top: 2rem;				
				background: rgba(255,255,255,0.9);
				z-index: 10;
			}
			.ss{
				background: rgba(211,211,211,1);
				
			}
			
			.sstx>img{
				height: 5rem;
				width: 5rem;
				border-radius: 2.5rem;
				margin-left: 1rem;
				margin-top: 3rem;
			}
			.nz{
				margin-top: 3rem;
				margin-left: 2rem;				
			}
			.ssnr{
				margin-left: 2rem;
				margin-top: 1rem;
				font-size: 2rem;
				
			}
			.tp{
				margin-top: 2rem;
				
			}
			.tp>img{
				margin: 1%;
			}
			.xtb{
				display: flex;	
				margin-left:10rem;		
				
			}
			.xtb>li{
				list-style-type: none;
			}
			.xtb>li>span{
				font-size: 2.5rem;
				margin: 1.5rem;
				margin-top: 2rem;
				
			}
			.seeNum{
				color: #31B0D5;
				margin-top: 2rem;
				margin-left: 0.5rem;
			}
			.pl{
				height: 2rem;
				width: 29rem;
				margin-left: 0.7rem;
				margin-top: 1rem;
				background-color:;
				border: none;
				outline: none;
				margin-bottom: 2rem;
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
				display: flex;
				justify-content: space-between;
				
				
			}
			#shoushuo>div{
				margin-top: 3rem;
			}
			
			.sstb{
				color: #5CB85C;
				font-size: 4rem;
			}
			.xctb{
				color: #31B0D5;
				font-size: 4rem;
			}
			.pstb{
				color: #D43F3A;
				font-size: 4rem;
			}
			
			
			
			
	</style>
	<body>
		<!--
            	作者：offline
            	时间：2018-07-04
            	描述：发说说
            -->
            <div id="shuoshuo-bg">
				<div id="shoushuo">
					<div style="margin-left: 3rem;">
						<dl onclick="fss()">
							<dt class="sstb">
								<span class="glyphicon glyphicon-comment"></span>
							</dt>
							<dd><span>发说说</span></dd>
						</dl>
						
					</div>
					<div>
						<dl>
							<dt class="xctb">
								<span class="glyphicon glyphicon-picture"></span>
							</dt>
							<dd><span>相册</span></dd>
						</dl>
					</div>
					<div style="margin-right: 3rem";>
						<dl>
							<dt class="pstb">
								<span class="glyphicon glyphicon-camera"></span>
							</dt>
							<dd><span>拍摄</span></dd>
						</dl>
					</div>
				</div>
			</div>
		
		<div id="content-wrapper" style="background-color: rgba(0,0,0,0);height: auto;">
		<div id="toubu">
		
			<span class="zd">动态</span>
			<span class="zd">
				好友动态
			</span>
			<span style="margin-right: 1.5rem;" class="zd">+</span>
		</div>	
			
			
			
			
			
			
			<div id="dttx">
				<img src="img/c24d400dc5bca5c6115875797c5c1917f2a22f99.jpg" />
			</div>
			<div id="xxl">
				<ul>
					<li style="margin-left: 2rem;">相册</li>
					<li>说说</li>
					<li>个性化</li>
					<li>小游戏</li>
					<li style="margin-right: 2rem;">小视频</li>
				</ul>
			</div>
			<span class="glyphicon glyphicon-thumbs-up"></span>
			
			<div id="ssdiv">
				<div class="ss">
					<div style="display: flex;">
						<div class="sstx">
						<img src="img/c24d400dc5bca5c6115875797c5c1917f2a22f99.jpg" />
						</div>
						<div class="nz">
							<p style="font-size: 1.7rem;">ONG牛逼</p>
							<p style="font-size: 1.2rem;color: #999999;">今天4：30</p>
						</div>
					</div>
					<p class="ssnr">sssssadaad</p>
					<div class="tp">		
							<img src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" />
									
							<img src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" />
								
							<img src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" />
			
	
							<img src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" />

					
							<img src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" />
			
					
							<img src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" />
			
					</div>
					<div style="display: flex;">
						<div class="seeNum">浏览127次</div>
						<div>
							<ul class="xtb">
								<li><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span></li>
								<li><span class="glyphicon glyphicon-comment" aria-hidden="true"></span></li>
								<li><span class="glyphicon glyphicon-share" aria-hidden="true"></span></li>
							</ul>
						</div>
					</div>
					<hr style="margin-top: -1.5rem;border: 0.08rem solid #C0C0C0;" />
				<p style="word-wrap: break-word;word-break: break-all;">
					<span class="glyphicon glyphicon-thumbs-up"></span>
					<span style="color: #28A4C9;">ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼</span>等35人觉得很赞
				</p>
				<div>
					<p><span>ONG牛逼</span>回复：没你秀</p>				
				</div>
				<p>
					<input class="pl" type="text" placeholder="评论" />
				</p>
			</div>
			
			<div class="ss">
				
					<div style="display: flex;">
						<div class="sstx">
						<img src="img/c24d400dc5bca5c6115875797c5c1917f2a22f99.jpg" />
						</div>
						<div class="nz">
							<p style="font-size: 1.7rem;">ONG牛逼</p>
							<p style="font-size: 1.2rem;color: #999999;">今天4：30</p>
						</div>
					</div>
					<p class="ssnr">sssssadaad</p>
					<div class="tp">		
							<img src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" />		
					</div>
					<div style="display: flex;">
						<div class="seeNum">浏览127次</div>
						<div>
							<ul class="xtb">
								<li><span class="glyphicon glyphicon-thumbs-up"></span></li>
								<li><span class="glyphicon glyphicon-comment"></span></li>
								<li><span class="glyphicon glyphicon-share"></span></li>
							</ul>
						</div>
					</div>
					<hr style="margin-top: -1.5rem;border: 0.08rem solid #C0C0C0;" />
				<p style="word-wrap: break-word;word-break: break-all;">
					<span class="glyphicon glyphicon-thumbs-up"></span>
					<span style="color: #28A4C9;">ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼,ONG牛逼</span>等35人觉得很赞
				</p>
				<div>
					<p><span>ONG牛逼</span>回复：没你秀</p>				
				</div>
				<p>
					<input class="pl" type="text" placeholder="评论" />
				</p>
			</div>				
		</div>
			
	</div>
		
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<script src="js/zepto.js"></script>
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/remstyle.js"></script>	
		<script src="js/zepto.js"></script>
		<script type="text/javascript">
			$(function(){
				
				var divImg=$(".tp");
				for(var i=0;i<divImg.length;i++){
					var number=$(divImg[i]).find("img");
					if(number.length==1){
						$(divImg[i]).find("img").css("width","100%");
					}
					if(number.length==2||number.length==4){
						$(divImg[i]).find("img").css("width","45%");
					}
					if(number.length==3||number.length>4){
						$(divImg[i]).find("img").css("width","30%");
					}
					
				}
				
				
				$(".zd").on("tap",function(){
					$("#shuoshuo-bg").show(300);
					$("#shoushuo").animate({
						"margin-top":0
					},200);
				});
		
				$.getJSON("space/allDyn",{},function(data){
					var i=0;
					alert(JSON.stringify(data))
					$.each(data,function(){
						
					i++;
					$("#ssdiv").append('<div class="ss"></div>');
					//好友
						$(".ss").eq(i-1).append('<div>\
							<div style="display: flex;">\
								<div class="sstx">\
									<img src="'+this.users.headImg+'" />\
								</div>\
								<div class="nz">\
									<p style="font-size: 1.7rem;">'+this.users.friend.friendName+'</p>\
									<p style="font-size: 1.2rem;color: #999999;">'+this.dynamicstate.stateTime+'</p>\
								</div>\
							</div>\
							<p class="ssnr">'+this.dynamicstate.stateText+'</p>\
							</div>');
					//图片
					$(".ss").eq(i-1).append('<div class="tp"></div>');
						$.each(this.img,function(){
							$(".tp").eq(i-1).append('<img src="'+this.path+'" />')
						});
					
				})
				
			})
			
		})	
			function fss() {
					window.location.href="fashuoshuo.jsp";
			}
			
		</script>
	<body>
</html>