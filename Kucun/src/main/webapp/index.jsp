<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<base href="/Kucun/"/>
<style>
		td{
			padding-left: 200px;
			padding-top:20px;
			
		}
</style>
<body>
<p style="background-color: blue;font-size: 17px" >采购入库</p>

<table>
<tr>
<td>单据编号：<input type="text" name="billno"></td>
<td>单据日期：<input type="text" name="billdate"></td>
</tr>
<tr>
<td>供应商：<input type="text" name="suppliername"></td>
<td>供应商地址：<input type="text" name="supplieraddress"></td>
</tr>
<tr>
<td>部门：<input type="text" name="department"></td>
<td>仓库：<input type="text" name="warehouse"></td>
</tr>
<tr>
<td>采购人员：<input type="text" name="buyer"></td>
<td>制单人员：<input type="text" name="executor"></td>
</tr>
</table>
<p style="margin-left: 200px;">
入库明细
</p>
<div style="margin-left: 200px;">
<textarea rows="10" cols="140" name="details"></textarea>
</div>
<p style="margin-left: 200px;">
	<span><input onclick="jz()" type="button" value="加载测试数据"/></span>
	<span><input onclick="fwd()"  type="button" value="加载服务端数据"/></span>
	<span><input onclick="bc()" type="button" value="保存"/></span>
	<span><input type="button" value="清空"/></span>
</p>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
		function jz() {
			var data={
					"billno":"20160119001",          //单据编号
					"billdate":"2016-01-19",         //单据日期
					"suppliername":"联想株洲总代理",     // 供应商
					"supplieraddress":"株洲天元区黄山路", //供应商地址
					"department":"物控部",             //采购所属部门
					"warehouse":"株洲仓",              //入库仓库
					"buyer":"牛采购",                  //采购人员
					"executor":"小花" ,                //制单人
					"details":
					[{                      //商品明细数据
						"billno":"20160119001",         //商品编号
						"lineid":1,                     //序号，或者行号
						"goodsname":"联想笔记本",          //商品名称
						"goodsnum":10,                  //数量
						"goodsprice":3000.00,           //单价
						"goodsmoneyamt":30000.00,       //金额
						"ispresent":0              //是否赠品
						}]
			};
			
			$("[name=billno]").val(data.billno);
			$("[name=billdate]").val(data.billdate);	
			$("[name=suppliername]").val(data.suppliername);
			$("[name=supplieraddress]").val(data.supplieraddress);
			$("[name=department]").val(data.department);
			$("[name=warehouse]").val(data.warehouse);
			$("[name=buyer]").val(data.buyer);
			$("[name=executor]").val(data.executor);
			$("[name=details]").val(JSON.stringify(data.details));
			
		}
		
		function bc(){
		
			var billno=$("[name=billno]").val();
			var billdate=$("[name=billdate]").val();	
			var suppliername=$("[name=suppliername]").val();
			var supplieraddress=$("[name=supplieraddress]").val();
			var department=$("[name=department]").val();
			var warehouse=$("[name=warehouse]").val();
			var buyer=$("[name=buyer]").val();
			var executor=$("[name=executor]").val();
			var details=$("[name=details]").val();
			var jq=details.substring(1,details.length-1);
			alert(jq);
			var data={
					billno:billno,
					billdate:billdate,
					suppliername:suppliername,
					supplieraddress:supplieraddress,
					department:department,
					warehouse:warehouse,
					buyer:buyer,
					executor:executor,				
			}
			alert(JSON.stringify(data));
			$.ajax({
				type:"post",
				url:"api/bill",
				contentType:"application/json;charset=utf-8",
				data:JSON.stringify(data),
				success:function(data){
					alert("发送成功！");
					 
					 $.ajax({
						type:"post",
						url:"api/bill/add",
						contentType:"application/json",
						data:jq,
						success:function(data){
							alert("发送成功！");
						},
						error:function(xhr){
							alert(xhr.responseText);
						}
					});		
				 },
				error:function(xhr){
					alert(xhr.responseText);
				}
			});
			
		}
		
		function fwd() {
			$.getJSON("api/bill/All",{},function(data){
				alert(JSON.stringify(data));
				$("[name=billno]").val(data[0].billno);
				$("[name=billdate]").val(data[0].billdate);	
				$("[name=suppliername]").val(data[0].suppliername);
				$("[name=supplieraddress]").val(data[0].supplieraddress);
				$("[name=department]").val(data[0].department);
				$("[name=warehouse]").val(data[0].warehouse);
				$("[name=buyer]").val(data[0].buyer);
				$("[name=executor]").val(data[0].executor);
				$("[name=details]").val("["+JSON.stringify(data[0].detail)+"]");

			})
			
		}

</script>
</body>
</html>