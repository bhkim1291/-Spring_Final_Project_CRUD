<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
    <meta name="description" content="login.jsp">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="">

    <title>Tour Visit Login</title>
    <link href="${context}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
    <link href="${context}/css/sb-admin-2.css" rel="stylesheet">
    <link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- jQuery -->
      <script src="${context}/js/jquery-1.9.1.js"></script> 
    <!-- Bootstrap Core JavaScript -->
    <script src="${context}/js/bootstrap.min.js"></script>
    <!-- Metis Menu Plugin JavaScript -->
    <script src="${context}/js/plugins/metisMenu/metisMenu.min.js"></script>
    <!-- Custom Theme JavaScript -->
        <link href="${context}/css/sb-admin-2.css" rel="stylesheet">
   		<link rel="stylesheet" href="/css/login.css">
</head>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div id="jumbotron" class="container">
		<div class="jumbotron jumbotron-info" >
			<h1><strong>자유게시판<br><hr>Login Page</strong>&nbsp;<span class="glyphicon glyphicon glyphicon-pencil"></span></font></h1>
			<p>Tour Visit에 오신 것을 진심으로 환영합니다.</p>
		</div>
	</div>
    <div class="container">
        <div class="">
            <div class="login_form">
                <div class="login-panel panel panel-default"  style="margin-bottom: 57%; padding: 0 10%;">
                    <div class="panel-heading">
                        <h3 class="panel-title" style="text-align: center; margin-bottom: 80px; margin-top: -200px; ">Please Sign In<hr></h3>
                    </div>
                    <div class="panel-body">
                        <form action="${context}/work/user/login.do" method="post" role="form" id="loginFrm">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="ID" id="id" name="id" type="text" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" id="pw" name="pw" type="password">
                                </div>
                                <div class="form-group">
                                	<span style="float: left;"><a href="${context}/user/idFind.jsp">ID찾기</a>|<a href="pwFind.jsp">PW찾기</a></span>
                                	<span style="float: right;"><a href="${context}/work/user/createUser.do">회원가입</a></span><br>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <button type="button" class="btn btn-lg btn-success btn-block" onclick="ajaxLoginCheck();">Login</button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
		<script type="text/javascript">
		$(document).ready(function(){
			$("#loginFrm").keypress(function (key){
				if(key.keyCode == 13){
					ajaxLoginCheck();
				}

			});
		});

		function ajaxLoginCheck(){
			var id = $("#id").val();
			var pw = $("#pw").val();

			var param = {};

			param["id"] = id;
			param["pw"] = pw;

			$.ajax({
				url:"${context}/work/user/ajaxLoginCheck.do",
				contentType:"application/json",
				dataType:"json",
				data:param,
				success:function(result){
					if(result['loginYn'] == 'success'){
						alert("로그인에 성공하였습니다.");
						$("#loginFrm").submit();
					}else{
						alert('로그인에 실패하셨습니다.');
						$("#id").val('');
						$("#pw").val('');
					}
				}
			});
		}


	</script>

</body>
</html>
