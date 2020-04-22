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
		$(".txt").hide();
		$(".tit").on("click",function(){
			$(this).siblings(".txt").show();
		});
		$(".deletebtn").on("click",function(){
			self.location("localhost:9090/deleteBoard");
		});
		
	});

</script>
</head>
<body>
	<form>
		<div class="ob" style="text-align:center;"><h2>게시판</h2></div><hr>
		<div class="wrap" style="text-align:center;">
			<div class="data">
			<c:set var="i" value="0"/>
			<c:forEach var="result" items="${data}">
			<c:set var="i" value="${i+1}"/>
			<!-- 	<ul class="nomal" style="text-align: center;padding-top: 50px;">
					<li>	 -->
						<div>
						<span class="dddcc" >${result.REGDATE}		
						<%-- <fmt:parseDate value="${result.REGDATE}" var="dayday" pattern='yyyymmdd'/>
						<fmt:formatDate  value="${dayday}" pattern="yyyy-MM-dd"/> --%></span>
						<input type="hidden" name="bno" value="${result.BNO}">			
						<span class="tit">${result.TITLE}</span>
						<button type="button" class="detailbtn" style="float: right;">상세보기</button>
						<button type="button" class="deletebtn" style="float: right;">삭제</button>
						<div class="txt" data-element="accrcontent" style="padding-top:10px;display: block;">${result.CONTENTS}					
						</div><hr>
						</div>
					<!-- </li>
					</ul> -->
			</c:forEach>			
			<button type="button" class="addbtn">작성</button>
			</div>
		</div>
	</form>
</body>
</html>