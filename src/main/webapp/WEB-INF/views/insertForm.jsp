<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="data" value="${article.content}" />

<%@include file="/WEB-INF/views/header.jsp"%>
<style>

</style>

<main class="flex-shrink-0">
	<div class="container">
		<div class="my-3 p-3 bg-body rounded shadow-sm">
			<form action="write.do" method="post">
				<div class="col-12">
					<label for="title" class="form-label">제목</label>
					<input class="form-control" type="text" name="title" value="${param.title}">
				</div>
				<div class="col-12 mt-3">
					<label for="context" class="form-label">내용</label>
					<textarea rows="5" cols="30" class="form-control" name="content" style="resize: none;">${param.content}</textarea>
				</div>
				<div class="col-12 text-center mt-3">
					<input type="submit" class="btn btn-primary" value="등록">
					<button type="button" class="btn btn-secondary" onclick="location.href='${context}/index.jsp';">취소</button>
				</div>
			</form>
		</div>
	</div>
</main>

<%@include file="/WEB-INF/views/footer.jsp"%>