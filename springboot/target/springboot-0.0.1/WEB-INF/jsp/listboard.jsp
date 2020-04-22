<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="ob"><h2>게시판</h2></div>
	<div class="wrap">
		<c:set var="i" value="0"/>
		<c:forEach var="result" items="${data}">
		<c:set var="i" value="${i+1}"/>
			<ul class="nomal" style="text-align: center;padding-top: 50px;">
				<li>	
					<button type="button" title="자세히 보기" data-element="accrmenu" class="on">
					<span class="dddcc" >${result.REGDATE}		
					<%-- <fmt:parseDate value="${result.REGDATE}" var="dayday" pattern='yyyymmdd'/>
					<fmt:formatDate  value="${dayday}" pattern="yyyy-MM-dd"/> --%></span>			
					<span class="tit">${result.TITLE}</span>
					</button>
					<div class="txt" data-element="accrcontent">${result.CONTENTS}</div>
				</li>
				</ul>
		</c:forEach>
	</div>
</body>
</html>