<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품</title>
<jsp:include page="../index/loading.jsp" />
<style>
	a{color:#333}
	a:hover{color:#cecece;border-bottom:2px soild #cecece;}
</style>
</head>
<body>
<jsp:include page="../index/header.jsp" />
	<div class="container">
		<div class="row">
			<div id="product_list" class="col-xs-12"
				style="text-align: center; margin-top: 50px; color: #555;">
				<div class="col-xs-12 col-sm-12 col-md-2" style="font-size: 32px;">
					<a href="${pageContext.request.contextPath }/product/list.do">Shop</a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-2" id="menu_control1"
					style="font-size: 20px; margin-top: 12px;">
					<a href="#">Soap</a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-2" id="menu_control2"
					style="font-size: 20px; margin-top: 12px;">
					<a href="#">Gift Shop</a>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-2" id="menu_control2"
					style="font-size: 20px; margin-top: 12px;">
					<a href="${pageContext.request.contextPath }/product/detail_admin.do?num=${dto.num}">관리자</a>
				</div>
			</div>
		</div>
	</div>
	<div style="border-bottom:1px solid #555;">수정</div>
	<div class="wrap"  style="width: 1500px;height: 1500px;background-color: #888;margin-left:80px;overflow:hidden;margin-top:4%">
		<div class="image_div" style="width: 1065px;height: 688px;background-color: #f4f4f4;float:left;">
			<img src="${pageContext.request.contextPath }/upload/${dto.saveFileName}" alt="" style="width: 100%;height: 100%;"/>
		</div>
		<div class="buy_menu" style="width: 434px;height:688px;float:left;">
			<div class="buy_menu_list" style="width:100%;height: 500px;padding-top:90px">
				<div class="product_name" style="width: 350px;height:50px;font-size:45px;margin:0 0 25px 45px;">
					<p style="margin-top:5px;font-weight:bold;">${dto.name }</p>
				</div>
				<div class="product_content" style="width: 350px;height:35px;margin:10px 0 0 50px;font-size:16px;">
					<p style="margin-top:5px;">${dto.content }</p>
				</div>
				<div class="product_price" style="width: 350px;height:35px;margin:10px 0 0 50px;font-size:16px;">
					<p style="margin-top:5px;font-weight:bold;">${dto.price }</p>
				</div>
				<div class="menu_underline" style="width: 350px;height:20px;margin:10px 0 5px 50px;border-top: 1px solid #333;"></div>
				<div class="credits" style="width: 200px;height:27px;margin-left:50px;font-size:16px;overflow:hidden">
					<p style="float:left;">적립금</p>
					<p style="width: 100px;margin:2px 0 0 80px;">1000원</p>
				</div>
				<div class="qty_name" style="width: 50px;height:20px;margin:17px 30px 0 52px;font-size:16px;float:left;">수량</div>
				<div class="qty_button" style="margin-top:11px;overflow:hidden;">
					<button style="float: left;border: unset;" id="btn_minus">
						<img src="${pageContext.request.contextPath }/resources/images/qty_down.gif" alt="" style="width: 30px;height: 35px;border: unset;" />
					</button>
					<input type="text" title="선택품목갯수" id="num" name="product_quantity" value="1" readonly="readonly" style="width: 65px;height: 35px;font-size:20px;border:unset;text-align:center;color:#555;float: left;"/>
					<button style="float: left;border: unset;" id="btn_plus">
						<img src="${pageContext.request.contextPath }/resources/images/qty_up.gif" alt="" style="width: 30px;height: 35px;border: unset;" />
					</button>
				</div>
				<div class="menu_underline" style="width: 350px;height:20px;margin:20px 0 0 50px;border-top: 1px solid #333;"></div>
				<div class="pay_price" style="width: 347px;font-size:16px;font-weight:bold;margin-left: 50px;">
					<div class="total_price_name" style="float:left;">총 구매 금액</div>
					<div class="total_price_amount" style="text-align:right">${dto.price }</div>
				</div>
				<div class="three_buttons" style="overflow:hidden;width: 347px;height: 78px;: #cecece;margin:30px 0 20px 50px;">
					<form action="" method="post" >
						<input type="hidden" id="num1" name="product_quantity"/>
						<input type="hidden" name="${dto.num }" id="product_num"/>
						<div class="buy_button" style="float: left;width: 177px;height: 59px;text-align: center;padding-top: 21px;font-size: 13px;border: 2px solid #333;overflow:hidden;">바로 구매하기</div>
					</form>
					<form action="" method="post">
						<input type="hidden" name="${dto.num }" id="product_num"/>
						<div class="like_button" style="float: left;width: 60px;height: 59px;border: 2px solid #333;margin-left: 21px;font-size: 30px;padding-top: 12px;text-align: center;overflow:hidden;"><i class="glyphicon glyphicon-heart"></i></div>
					</form>
					<form action="" method="post">
						<input type="hidden" id="num2" name="product_quantity"/>
						<input type="hidden" name="${dto.num }" id="product_num"/> 
						<div class="cart_button" style="width: 60px;height: 59px;border: 2px solid #333;margin-left: 21px;font-size: 30px;padding-top: 12px;text-align: center;float:left;"><i class="glyphicon glyphicon-shopping-cart"></i></div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		var num=$("#num").val();
		var num1=$("#num1").val();
		var num2=$("#num2").val();
			  num=1;
			  num1=1;
			  num2=1;
		$("#btn_minus").on("click",function(){
			num-=1;
			num1-=1;
			num2-=1;
			if(num<0){
				alert("수량을 선택해주세요");
				num=0;
				num1=0;
				num2=0;
				return false;
			}
			$("#num, #num1, #num2").val(num);
			console.log(num);
			console.log(num1);
			console.log(num2);
		});
		
	
		$("#btn_plus").on("click",function(){
			num+=1;
			num1+=1;
			num2+=1;
			$("#num, #num1, #num2").val(num);
			console.log(num);
			console.log(num1);
			console.log(num2);
		});
		function deleteConfirm(num) {
			var isDelete = confirm("삭제 하시겠습니까?");
			if (isDelete) {
				location.href = "delete.do?num=" + num
			};
		};
	</script>
</body>
</html>