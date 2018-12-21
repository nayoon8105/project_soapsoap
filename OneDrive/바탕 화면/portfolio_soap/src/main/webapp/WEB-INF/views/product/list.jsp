<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../index/loading.jsp"/>
<style>
	a{color:#333}
	a:hover{color:#cecece;border-bottom:2px soild #cecece;}
</style>
</head>
<body>
<jsp:include page="../index/header.jsp"/>
<div class="container">
	<div class="row">
		<div id="product_list" class="col-xs-12" 
				style="text-align:center;margin-top:50px;color:#555;">
			<div class="col-xs-12 col-sm-12 col-md-2"  style="font-size:32px;">
					<a href="${pageContext.request.contextPath }/product/list.do">Shop</a>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-2" id="menu_control1" style="font-size:20px;margin-top:12px;">
					<a href="#">Soap</a>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-2" id="menu_control2"  style="font-size:20px;margin-top:12px;">
					<a href="#">Gift Shop</a>
			</div>
		</div>
	</div>
</div>
	<div style="border-bottom:1px solid #555;width: 100%;margin-top:14px;"></div>
	<div class="container">
	<div class="product_mainbody">
		<div class="row" style="">
			<c:forEach var="tmp" items="${list }">
				<div class="col-xs-6 col-sm-3" style="text-align:center;margin-top:5%;">
					<a href="detail.do?num=${tmp.num }">
						<img src="${pageContext.request.contextPath }/upload/${tmp.saveFileName}" alt="" style="width:200px;height: 300px;text-align:center;z-index: 8"/>
						<p style="font-size:14px;margin-top:15px;color:#999;">${tmp.content}</p>
						<p style="font-size:14px;">${tmp.name }</p>
						<p style="font-size:14px;">${tmp.price }</p>
					</a>
				</div>
			</c:forEach>
		</div>
	</div>	
	</div>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js" /></script>
<script>
	$("#product_list a").on("click",function(){
		$(this).css("color","#cecece");
	});
</script>
</body>
</html>