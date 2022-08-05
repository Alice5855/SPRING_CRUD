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
		<div class="my-3 p-5 bg-body rounded shadow-sm">
			<div class="border-bottom">
				<h2 class="text-center text-secondary"><strong>New Entry</strong></h2>
			</div>
			<form action="write.do" method="post" class="m-3">
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function(){
		$(".card").css("background-image", "url('${context}/resources/imgs/smacs0723.jpg')");
		$("h2.fw-bold").text("Cluster Of Galaxies");
		$("small.pname").text("SMACS 0723");
	});
</script>

<%@include file="/WEB-INF/views/footer.jsp"%>