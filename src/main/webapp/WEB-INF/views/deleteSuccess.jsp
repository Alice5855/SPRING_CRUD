<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@include file="/WEB-INF/views/header.jsp"%>

<main class="flex-shrink-0">
	<div class="container">
		<div class="success-wrapper">
			게시글을 성공적으로 삭제했습니다 <br><br>
			<form action="/index.jsp">
				<input type="submit" value="처음으로">
			</form>
		</div>
	</div>
</main>

<%@include file="/WEB-INF/views/footer.jsp"%>