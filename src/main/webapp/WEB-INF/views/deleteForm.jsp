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
		<div class="box-wrapper">
			<p>
				제목 : <div id="title_box">${article.title}</div>
			</p>
			<!-- JSTL replace 함수로 개행문자 줄바꿈 처리 적용 -->
			<p>
				내용 : <div id="content_box">${fn:replace(data,newLineChar, "<br>")}</div>
			</p>
			<div class="subbtn-wrapper">
				<form action="delete.do" method="post">
					<input type="submit" value="삭제">
				</form>
				<form action="/index.jsp">
					<input type="submit" value="처음으로">
				</form>
			</div>
		</div>
	</div>
</main>

<%@include file="/WEB-INF/views/footer.jsp"%>