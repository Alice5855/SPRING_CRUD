<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@include file="/WEB-INF/views/header.jsp"%>

<main class="flex-shrink-0">
	<div class="container">
		<div class="my-3 p-5 bg-body rounded shadow-sm">
			<div class="border-bottom text-muted text-center mb-3">
				<h3><strong>Process successfully done</strong></h3>
			</div>
			<div class="cfiller">
				<p class="text-center">게시글을 성공적으로 삭제했습니다</p>
			</div>
			<div class="col-12 text-center">
				<input type="submit" class="btn btn-primary" onclick="location.href='${context}/index.jsp';" value="처음으로">
			</div>
		</div>
	</div>
</main>

<%@include file="/WEB-INF/views/footer.jsp"%>