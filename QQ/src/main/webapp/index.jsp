<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>Insert title here</title>
<base href="/QQ/"/>
<link href="css/bootstrap.css" rel="stylesheet">
</head>

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
	.item{
		display: flex;
		height: 7rem;
		overflow: hidden;
		border-bottom: 0.5px solid #DDDDDD;
	}
	.item>.content{
		min-width: 100%;
		background-color: white;
		display: flex;
		position: relative;
		opacity: 0.9;
	}
	.item>.delete{
		background: #d00;
		min-width: 30%;
		font-size: 2.5rem;
		color: white;
		line-height: 7rem;
		text-align: center;
	}
	.dd>.touxiang{
		border-radius: 35rem;
		 margin-top: 0.7rem;
		 margin-left: 0.5rem;
	}
	.ncdiv{
		margin-top: 1.7rem;
		margin-left: 2rem;
	}
	
	.ncdiv>.nc{
		font-size: 2rem;
	}
	.ncdiv>.xx{
		font-size: 1.5rem;
		color: #C0C0C0;
		margin-top: -1rem;
	}
	.ends{
		position: absolute;	
		right: 1rem;
		top: 1rem;	
	}
	.ends>.sj{
		font-size:1.5rem;
	}
	.ends>.xxnumber{
		height:2.8rem;
		width: 2.8rem;
		background-color: red;
		font-size:1.5rem;
		font-weight: bold;
		color: white;
		border-radius: 1.4rem;		
		line-height:2.8rem ;
		text-align: center;
		
	}
	</style>
	
<body>
<div id="toubu">
			<img src="img/${users.get(0).headImg }" height="50rem" width="50rem"  style="margin-top: 0.6rem;margin-left: 1rem;border-radius: 25rem;"/>
			<span>
				消&nbsp;息
			</span>
			<span style="margin-right: 1rem;">+</span>
		</div>
		
		<div id="content-wrapper" style="background-color: rgba(0,0,0,0);height: auto;">
			<div class="item" style="position: relative;">
				<div class="content">
						<div class="dd"> 
							<img class="touxiang" src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" height="70rem" width="70rem" />
						</div>	
						<div class="ncdiv">
							<P class="nc">鄙人PGTWO</P>
							<P class="xx">你是湖南人波</P>
						</div>
						<div class="ends">
							<p class="sj">9:30</p>
							<div class="xxnumber">1</div>
						</div>
				</div>
			<div class="delete">删除</div>
			</div>
				
		<div class="item" style="position: relative;">
				<div class="content">
						<div class="dd"> 
							<img class="touxiang" src="img/c24d400dc5bca5c6115875797c5c1917f2a22f99.jpg" height="70rem" width="70rem" />
						</div>	
						<div class="ncdiv">
							<P class="nc">PGONE</P>
							<P class="xx">你是湖南人波</P>
						</div>
						<div class="ends">
							<p class="sj">9:30</p>
							<div class="xxnumber">1</div>
						</div>
						
				</div>
			<div class="delete">删除</div>
		</div>
			
		<div class="item" style="position: relative;">
				<div class="content">
						<div class="dd"> 
							<img class="touxiang" src="img/c24d400dc5bca5c6115875797c5c1917f2a22f99.jpg" height="70rem" width="70rem" />
						</div>	
						<div class="ncdiv">
							<P class="nc">PGONE</P>
							<P class="xx">你是湖南人波</P>
						</div>
						<div class="ends">
							<p class="sj">9:30</p>
							<div class="xxnumber">1</div>
						</div>
						
				</div>
			<div class="delete">删除</div>
		</div>
		
		
		<div class="item" style="position: relative;">
				<div class="content">
						<div class="dd"> 
							<img class="touxiang" src="img/c24d400dc5bca5c6115875797c5c1917f2a22f99.jpg" height="70rem" width="70rem" />
						</div>	
						<div class="ncdiv">
							<P class="nc">PGONE</P>
							<P class="xx">你是湖南人波</P>
						</div>
						<div class="ends">
							<p class="sj">9:30</p>
							<div class="xxnumber">1</div>
						</div>
						
				</div>
			<div class="delete">删除</div>
		</div>
		
		
		<div class="item" style="position: relative;">
				<div class="content">
						<div class="dd"> 
							<img class="touxiang" src="img/c24d400dc5bca5c6115875797c5c1917f2a22f99.jpg" height="70rem" width="70rem" />
						</div>	
						<div class="ncdiv">
							<P class="nc">PGONE</P>
							<P class="xx">你是湖南人波</P>
						</div>
						<div class="ends">
							<p class="sj">9:30</p>
							<div class="xxnumber">1</div>
						</div>
						
				</div>
			<div class="delete">删除</div>
		</div>
			
			
					
		</div>
		
		
		<div id="dibu">
			<div style="margin-left: 4rem">
				<span class="glyphicon glyphicon-comment"></span>
				<p style="margin-top: -3.7rem">消&nbsp;息</p>
			</div>
			<div>
				<span class="glyphicon glyphicon-user"></span>
				<p style="margin-top: -3.7rem;" onclick="lxr()">联系人</p>
				<input type="hidden" name="userId" value="${users.get(0).userId }">		
			</div>
			<div>
				<span class="glyphicon glyphicon-eye-open"></span>
				<p style="margin-top: -3.7rem;">看&nbsp;点</p>
			</div>
			<div style="margin-right: 4rem;">
				<span class="glyphicon glyphicon-star"></span>
				<p style="margin-top: -3.7rem;"onclick="dt()">动&nbsp;态</p>
			</div>
		</div>
		
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/remstyle.js"></script>	
		<script src="js/zepto.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#dibu>div").on("tap",function(){
					var divs=$("#dibu>div");					
					for (var i=0;i<divs.length;i++) {
						$(divs[i]).css("color","white");
					}
					$(this).css("color","blue");
				})
			})
			
			function lxr() {
				var userId=$("[name=userId]").val();
				window.location.href="User/lxr?userId="+userId;				
			}
			
			function dt() {
				window.location.href="dontai.jsp";				
			}
		</script>
		
		<script type="text/javascript">
				var xStart;
				var wDelete;//删除的红区区域的宽度
				var marginLeft;//起始margin值
				$(function(){
					wDelete = parseInt($(".item>.delete").width());
					
					console.log(wDelete);
					
					$(".item").on("touchstart",function(e){
						xStart = e.changedTouches[0].clientX;
						marginLeft = parseInt($(".content",this).css("margin-left"));
						console.log(marginLeft+"----");
					});
					
					$(".item").on("touchmove",function(e){
						var xEnd = e.changedTouches[0].clientX;
						//随指间移动
						$(".content",this).css("margin-left",marginLeft+(xEnd-xStart));
					});
					
					$(".item").on("touchend",function(e){
						var xEnd = e.changedTouches[0].clientX;
						//如果活动距离大于wDelete的30%，则滑动到目标位置，否则，回到起始位置
						//起始位置只能是两种情况，要么是0，要么是-wDelete；
						//移动的距离
						var len = xEnd-xStart;
						var left;
						//如果是往右
						if(len>0){
							if(len>wDelete*0.3){
								//margin-left回到0
								left=0;
							}else{
								//margin-left等于起始位，就是wDelete
								left = -wDelete;
							}
						}else{
							if(Math.abs(len)>wDelete*0.3){
								//margin-left等于起始位，就是wDelete
								left = -wDelete;
							}else{
								//margin-left回到0
								left=0;
							}
						}
						//执行动画
						$(".content",this).animate({marginLeft:left},300);
						//$(".content",this).("margin-left",left);
					});
				});
		</script>
	</body>
</html>