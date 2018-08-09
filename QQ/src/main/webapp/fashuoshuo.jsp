<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="/QQ/"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>Insert title here</title>
</head>
<style>
			*{
				margin: 0;
				padding: 0;
			}
			#tu{
			display: flex;
			justify-content: flex-start;
			}
			#tu>img{
			width: 4rem;
			height: 4rem;
			margin-left:0.5rem;
			border: 1px solid gray;
			}
			.to-p{
				border-bottom: 0.5px solid lightgray;
				display: flex;
				justify-content: space-between;
				height: 50px;
				text-align: center;
				line-height: 48px;
				font-weight: 500;
			}
			.to-p>div>button{
				width: 60px;
				height: 30px;
				border: none;
				background-color: whitesmoke;
				color: darkgray;
				font-size: 18px;
				border-radius: 2.5px;
			}
			textarea{
				margin: 10px 10px 0 10px;
				width: 353px;
				height: 140px;
				font-size: 18px;
				border: none;
				outline: none;
			}
		</style>
<body>
		<!--头部 第一行 -->
		 <form id="form1" action="space/faBiao" method="post" enctype="multipart/form-data">
		<div class="iu">
			<div style="margin-left: 10px;">
				取消
			</div>
			<div style="display: flex;justify-content: space-around;width: 110px;font-size: 18px;">
				<div style="border-bottom: 3px solid gold;"><strong>说说</strong></div>
				<div style="border-bottom: 3px solid gold;"><strong>秘密</strong></div>
			</div>
			<div style="margin:1px 10px 0 0;">
				<button type="submit">发布</button>
			</div>
		</div>
		<!--写说说部分-->
		 <textarea name="centent">分享新鲜事...</textarea>
		
    <div>
        <input style="display: none;" type="file" id="file1" name="file" multiple/>
		<span onclick="fun()" style="cursor: pointer;border:1px solid #ddd;font-size: 40px;display: inline-block;width: 50px;height: 50px;text-align: center;">+</span>
    </div>
    </form>
    <div id="tu">
    </div>
		<script type="text/javascript" src="js/zepto.js" ></script>
		<script>
			function fun(){
    		//触发文件域的click时间，相当于你点了它
    		document.querySelector('#file1').click();
    	}
    	
        document.querySelector('#file1').onchange = function () {
            var fileReader = new FileReader();
            fileReader.onload = function (e) {
                if (fileReader.readyState == FileReader.DONE) {
                    var img = document.createElement('img');
                    img.src = this.result;
                    document.getElementById("tu").appendChild(img); //示例只是简单插入body
                }
            }
            //一次加载多个文件
            var i = 0, src = this.files;
            fileReader.readAsDataURL(src[i]);
            fileReader.onloadend = function () {
                i++;
                if (i < src.length) fileReader.readAsDataURL(src[i]);
            }
        }
		</script>
		
		
	</body>
</html>