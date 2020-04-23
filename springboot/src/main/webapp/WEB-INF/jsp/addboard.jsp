<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	 
	 $(function(){
		$(".cancelbtn").on("click",function(){
			history.go(-1);
		})
		 
		$(".sendbtn").on("click",function(){
			$("form").attr("method","post").attr("action","/addBoard").submit();
		})
		
	 })

</script>
</head>
<body>
	<form>
		<div class="ob" style="text-align:center;"><h2>게시판 작성</h2></div><hr>
		<div class="wrap" style="text-align:center;">
			<div class="data">
				글제목 : <input type="text" name="title" vlaue=""/><br>
				글내용 : <input type="text" name="contents" value=""/>
			</div>
			<div>
				<button type="button" class="sendbtn">작성 </button>
				<button type="button" class="cancelbtn">취소</button>
			</div>
		</div>
	</form>
</body>
</html>