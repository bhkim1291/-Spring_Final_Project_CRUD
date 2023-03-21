<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var ="context"><%=request.getContextPath()%></c:set>
<head>
<style type="text/css">
	a{cursor: pointer;}
</style>
    <meta charset="utf-8">
    <title>MultiShop - Online Shop Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="${context}/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${context}/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${context}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${context}/css/style.css" rel="stylesheet">
  	<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
    
   <!--   <script src="${context}/js/jquery.js"></script>-->
    
    <!-- <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>-->
	<script src="${context}/js/jquery-1.9.1.js"></script>
	<script src="${context}/js/jquery.form.js"></script>
    <script src="${context}/js/common.js"></script>
    
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="${context}/lib/easing/easing.min.js"></script>
    <script src="${context}/lib/owlcarousel/owl.carousel.min.js"></script>
    
    <!-- Contact Javascript File -->
    <script src="${context}/mail/jqBootstrapValidation.min.js"></script>
    <script src="${context}/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
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
    <div class="container-fluid">
            <div class="col-lg-6 d-none d-lg-block">
                 <a class="text-body mr-3" onclick="location.href='${context}/about/introduction.jsp'" style="cursor: pointer;"></a>
                    <!-- 메뉴를 누를때마다 user 의 등급과 로긴체크,로긴 됐을때 어디로 이동할지를 넣어준다 -->
                 <a class="text-body mr-3" onclick="location.href='${context}/location/location.jsp'" style="cursor: pointer;"></a>
                    
            <div class="col-lg-6 text-center text-lg-right">
                 <div class="d-inline-flex align-items-center">
                    <div class="btn-group">
                    </div>
                </div>
                <div class="d-inline-flex align-items-center d-block d-lg-none">
                    <a href="" class="btn px-0 ml-2">
                        <i class="fas fa-heart text-dark"></i>
                        <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                    </a>
                    <a href="" class="btn px-0 ml-2">
                        <i class="fas fa-shopping-cart text-dark"></i>
                        <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                    </a>
                </div>
            </div>
        </div>
                <form action="">
                    <div class="input-group">
                        <div class="input-group-append">
                            </span>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid bg-dark mb-30">
        <div class="row px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 bg-light" id="navbar-vertical" style="width: calc(100% - 30px); z-index: 999;">
                    <div class="navbar-nav w-100">
                        <div class="nav-item dropdown dropright">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Dresses <i class="fa fa-angle-right float-right mt-1"></i></a>
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
            <div class="col-lg-9">
                    </button>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
