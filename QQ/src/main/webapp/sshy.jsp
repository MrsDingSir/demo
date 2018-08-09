<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<base href="/QQ/"/>
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
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
			    background: url(img/09592I944-4.jpg) no-repeat center center fixed;
			    background-size: cover;
			}
					
			#ssl{
				height: 3rem;
				width: 100%;			
				margin-top: 1rem;
				opacity: 0.9;
				border: none;
				outline: none;
				justify-content: flex-start;
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
		<input type="hidden" name="userId" value="${users.get(0).userId }">
			<div id="toubu">
			<img src="img/555aaa206bf0040e3bd89c6412aff12ce1794105.jpg" height="50rem" width="50rem"  style="margin-top: 0.6rem;margin-left: 1rem;border-radius: 25rem;"/>
			<span id="">
				联系人
			</span>
			<span style="margin-right: 1rem;">+</span>
		</div>
		
		<div id="content-wrapper" style="background-color: rgba(0,0,0,0);">
				<p>
					<input id="ssl" name="nickName"  type="text" placeholder="搜索" />	
				</p>	
		</div>
		<div class="hyl" style="height: auto;width: 100%; overflow-y: scroll;">
									

		</div>
		<link href="css/bootstrap.min.css" rel="stylesheet" />		
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/remstyle.js"></script>	
		<script src="js/zepto.js"></script>
		<script type="text/javascript">
				$(function() {
					$("[name=nickName]").on("blur",function(){
						var nickName=$(this).val();
						var userId=$("[name=userId]").val();
						if(nickName!=""){
							$(".hyl").empty();
							$.getJSON("api/user/sshy",{nickName:nickName,userId:userId},function(data){					
								$.each(data,function(){
									var newp="<div class='item'><div class='content'><div class='dd'> <img class='touxiang' src='img/"+this.headImg+"' height='50rem' width='50rem' /></div><div class='ncdiv'><P class='nc'>"+this.nickName+"</P><P class='xx'>"+this.userName+"</P><input type='hidden' name='userId' value="+this.userId+"></div></div></div>";								
									$(".hyl").append(newp);
								})
								
							})
						}
					})
					
					$(".hyl").on("click",".item",function(){
						var num=$(".item");
						var xb=$(".item").index(this);
						var userId=$(num[xb]).find("[name=userId]").val();
						window.location.href="User/addhy?userId="+userId;	
					})
				})
		</script>		
	</body>
</html>