<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="context"><%=request.getContextPath()%></c:set>
<head>
<style type="text/css">
a {
	cursor: pointer;
}
</style>
<meta charset="utf-8">
<title>MultiShop - Online Shop Website Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<!--   <link href="${context}/img/favicon.ico" rel="icon"> -->

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap"
	rel="stylesheet">

<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${context}/lib/animate/animate.min.css" rel="stylesheet">
<link href="${context}/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${context}/css/style.css" rel="stylesheet">

<!--   <script src="${context}/js/jquery.js"></script>-->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="${context}/js/common.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
<script src="${context}/lib/easing/easing.min.js"></script>
<script src="${context}/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="${context}/mail/jqBootstrapValidation.min.js"></script>
<script src="${context}/mail/contact.js"></script>

<!-- Template Javascript -->
<script src="${context}/js/main.js"></script>
</script>
<!-- Channel Plugin Scripts -->
<script>
	(function() {
		var w = window;
		if (w.ChannelIO) {
			return (window.console.error || window.console.log || function() {
			})('ChannelIO script included twice.');
		}
		var ch = function() {
			ch.c(arguments);
		};
		ch.q = [];
		ch.c = function(args) {
			ch.q.push(args);
		};
		w.ChannelIO = ch;
		function l() {
			if (w.ChannelIOInitialized) {
				return;
			}
			w.ChannelIOInitialized = true;
			var s = document.createElement('script');
			s.type = 'text/javascript';
			s.async = true;
			s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
			s.charset = 'UTF-8';
			var x = document.getElementsByTagName('script')[0];
			x.parentNode.insertBefore(s, x);
		}
		if (document.readyState === 'complete') {
			l();
		} else if (window.attachEvent) {
			window.attachEvent('onload', l);
		} else {
			window.addEventListener('DOMContentLoaded', l, false);
			window.addEventListener('load', l, false);
		}
	})();
	ChannelIO('boot', {
		"pluginKey" : "634ebfd4-9412-4ee3-89a8-ca5bac58fa25"
	});
</script>
<!-- End Channel Plugin -->

</head>




<c:set var="loginUrl">${context}/user/login.jsp</c:set>
<c:set var="gomain">${context}/work/product/goMain.do</c:set>
<c:set var="officeUrl">${context}/work/product/retrieveProductList.do?category=${dsProductList[0].PRODUCT_CATEGORY_CD}</c:set>

<body>
	<!-- Topbar Start -->

	<div class="GKYK-header">
		<div class="container-fluid">
			<div class="row bg-secondary py-1 px-xl-5">
				<div class="col-lg-6 d-none d-lg-block">
					<div class="d-inline-flex align-items-center h-100">
						<a class="text-body mr-3" onclick="location.href='${context}/about/introduction.jsp'" style="cursor: pointer;"></a>

						<!-- 메뉴를 누를때마다 user 의 등급과 로긴체크,로긴 됐을때 어디로 이동할지를 넣어준다 -->

						<a class="text-body mr-3" onclick="location.href='${context}/location/location.jsp'" style="cursor: pointer;"></a> <a class="text-body mr-3" href=""></a> 
						<a class="text-body mr-3" href=""></a>
					</div>
				</div>
				<div class="col-lg-6 text-center text-lg-right">
					<div class="d-inline-flex align-items-center">
						<c:if test="${sessionScope.id == null}">
							<a class="dropdown-item" type="button" onclick="location.href='${context}/user/login.jsp'"><strong></strong></a>
							<a class="dropdown-item" type="button" onclick="location.href='${context}/work/user/createUser.do'"><strong> </strong></a>
						</c:if>
						<c:if test="${sessionScope.id != null}">
							<a class="dropdown-item" type="button" onclick="location.href='${context}/work/user/updateUser.do'"></a>
							<a class="dropdown-item" type="button" onclick="location.href='${context}/work/user/logout.do'"><strong></strong></a>
							<a class="dropdown-item" type="button" onclick="location.href='${context}/work/cart/retrieveCartList.do'"><strong></strong></a>
						</c:if>
					</div>
				</div>
				<div class="d-inline-flex align-items-center d-block d-lg-none">
					<a href="" class="btn px-0 ml-2"> <i class="fas fa-heart text-dark"></i> <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
					</a> 
					<a href="" class="btn px-0 ml-2"> <i class="fas fa-shopping-cart text-dark"></i> <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
					</a>
				</div>
			</div>
		</div>
					<!-- 드롭다운 부분 -->
					<!--    <div class="col-lg-4 col-6 text-right">
			                <div class="btn-group" role="group" aria-label="Basic example">
			  				<button type="button" class="btn btn-primary header-icon-wrap">
			  		-->
							<!-- 이미지 버튼 종료 -->
								<c:if test="${sessionScope.id != null && sessionScope.grade == 'A'}">
									<button class="btn btn-default" type="button" onclick="location.href='${context}/work/product/retrieveProductListForManage.do'">
										<strong>재고관리</strong>
									</button>
									<button class="btn btn-default" type="button" onclick="location.href='${context}/work/sell/retrieveStatisticsForProduct.do'">
										<strong>매출통계</strong>
									</button>
									<button class="btn btn-default" type="button" onclick="location.href='${context}/work/product/retrieveStatisticsForStock.do?productCategoryCd=P'">
										<strong>재고현황</strong>
									</button>
								</c:if>
							</div>
							<!-- 드롭다운 버튼 부분 종료 -->
						</div>
						<!-- 드롭다운 부분 -->
							<!-- 드롭다운메뉴 -->

						<!-- 드롭다운 버튼 부분 종료 -->


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Topbar End -->

	<!-- Navbar Start -->
	<div class="container-fluid mb-30">
		<div class="row px-xl-5 header-category-nav-bar">
			<div class="col-lg-3 d-none d-lg-block header-category">
				<nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bsg-light category-list" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
					<div class="navbar-nav w-100">
						<div class="nav-item dropdown dropright">
							<div class="dropdown-menu position-absolute rounded-0 border-0 m-0">
								<a href="" class="dropdown-item">Men's Dresses</a>
								<a href="" class="dropdown-item">Women's Dresses</a>
								<a href="" class="dropdown-item">Baby's Dresses</a>
							</div>
						</div>
						<a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[0].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">office</a>
						<a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[1].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Pen</a> 
						<a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[2].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Binder</a> 
						<a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[3].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Design</a>
						<a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[4].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Storage</a>
						<a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[5].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Dress</a>
						<a onclick="javascript:fn_isLogin('${sessionScope.userCode}','${loginUrl}','${context}/work/product/retrieveProductList.do?category=${dsProductList[6].PRODUCT_CATEGORY_CD}')" class="nav-item nav-link">Shirts</a>
					</div>
				</nav>
			</div>
			<div class="col-lg-9"></div>
		</div>
	</div>
	</div>
	<!-- Navbar End -->