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
			<div class="">
				<h2 class="text-center text-secondary"><strong>Recent Entry</strong></h2>
			</div>
			<div class="border-bottom m-3">
				<h3 class=""><strong>${article.title}</strong></h3>
			</div>
			<!-- JSTL replace 함수로 개행문자 줄바꿈 처리 적용 -->
			<div class="m-3">
				<p class="">${fn:replace(data,newLineChar, "<br>")}</p>
			</div>
			<div class="col-12 text-center">
				<input type="submit" class="btn btn-primary" onclick="location.href='${context}/index.jsp';" value="처음으로">
			</div>
		</div>
	</div>
</main>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function(){
		$(".card").css("background-image", "url('${context}/resources/imgs/Southern_ring_nebula.png')");
		$("h2.fw-bold").text("Southern Ring Nebula");
		$("small.pname").text("NGC 3132");
	});
</script>

<%@include file="/WEB-INF/views/footer.jsp"%>