<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- JSTL replace 함수로 개행 문자 줄바꿈 처리 적용 -->
<%
	pageContext.setAttribute("newLineChar", "\n");
%>

<c:set var="data" value="${article.content}" />

<%@include file="/WEB-INF/views/header.jsp"%>

<main class="flex-shrink-0">
	<div class="container">
		<div class="my-3 p-3 bg-body rounded shadow-sm">
			<div class="border-bottom">
				<h3 class=""><strong>${article.title}</strong></h3>
			</div>
			<!-- JSTL replace 함수로 개행문자 줄바꿈 처리 적용 -->
			<div class="mt-3">
				<p class="">${fn:replace(data,newLineChar, "<br>")}</p>
			</div>
			<div class="col-12 text-center">
				<form action="delete.do" method="post" class="inlineform">
					<input type="submit" class="btn btn-danger" value="삭제">
				</form>
				<input type="submit" class="btn btn-primary" onclick="location.href='${context}/index.jsp';" value="처음으로">
			</div>
		</div>
	</div>
</main>

<%@include file="/WEB-INF/views/footer.jsp"%>