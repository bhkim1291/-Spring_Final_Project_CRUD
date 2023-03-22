<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var ="context"><%=request.getContextPath()%></c:set>
<!DOCTYPE html>
<html>
<head>
	<meta name="description" content="boardRegisterC.jsp">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Travel Interact</title>
	<link href="${context}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${context}/css/bootstrap-theme.css" rel="stylesheet">
	<link href="${context}/css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">
	<link href="${context}/css/plugins/social-buttons.css" rel="stylesheet">
	<link href="${context}/font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet" >
    <link href="${context}/css/process.css" rel="stylesheet">

	
	

 <script src="${context}/js/jquery.js"></script>
    <script src="${context}/js/common.js"></script>
   
	<script type="text/javascript">

	$(document).ready(function(){
		fn_init();

	});

	function fn_save(){
		if(!fn_validation()){
			return;
		}else{
			var boardContents = String($("#boardContents").val());

			boardContents = boardContents.replace(/\n/gi, "<br/>");

			$("#boardContents").val(boardContents);

	 		$("#createBoard").submit();
		}
	}

</script>

</head>
<body>
	
	
	<div class="container" style="margin-top: 2%; margin-bottom: 10%;">
	<div class="page-header">
		<h1>게시글 작성하기</h1>
	</div>
	
	
	<form id="createBoard" method="post" action="${context}/work/board/createBoard2.do" role="form">
	
		<div class="form-horizontal">
			<div class="form-group">
				<label for="boardTitle" class="control-label col-md-1"><b>제목</b></label>
				<div class="col-md-11">
					<input class="form-control" type="text" name="boardTitle" id="boardTitle" required="required" maxlength="50" autofocus="autofocus" placeholder="제목을 입력해주세요"/>
				</div>
			</div>

			<div class="form-group">
				<label for="boardContents" class="control-label col-md-1"><b>본문</b></label>
				<div class="col-md-11">
					<textarea class="form-control" name="boardContents" id="boardContents" cols="10" rows="15" required="required" placeholder="본문을 입력해주세요"></textarea>
				</div>
			</div>
		<div class="form-group">
				<button type="button" class="btn btn-default" onclick="fn_back()" style="float: left; margin-left: 10px; color: #000000">취소</button>
			</div>
				<button class="btn btn-primary" type="button" name="btnSubmit" id="btnSubmit" onclick="fn_save()"style="margin-right: 100px; float: right; color: #ffffff !important;">등록하기</button>
			</div>
		</div>
		</div>
	</form>
	</div>
	
</body>
</html>