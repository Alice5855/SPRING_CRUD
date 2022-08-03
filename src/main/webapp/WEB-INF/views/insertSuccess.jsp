<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="/WEB-INF/views/header.jsp"%>

<main class="flex-shrink-0">
	<div class="container">
		<div class="my-3 p-3 bg-body rounded shadow-sm">
			<div class="">
				<p class="text-center">게시글을 성공적으로 등록했습니다</p>
			</div>
			<div class="col-12 text-center">
				<input type="submit" class="btn btn-primary" onclick="location.href='${context}/article/read.do';" value="읽기">
				<input type="submit" class="btn btn-secondary" onclick="location.href='${context}/index.jsp';" value="처음으로">
			</div>
		</div>
	</div>
</main>

<%@include file="/WEB-INF/views/footer.jsp"%>