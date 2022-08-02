<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="data" value="${article.content}" />

<%@include file="/WEB-INF/views/header.jsp"%>

<main class="flex-shrink-0">
	<div class="container">
		<div class="box-wrapper">
			<form action="write.do" method="post">
				<p>
					제목 : <br><input id="input_box" type="text" name="title" value="${param.title}">
				</p>
				<p>
					내용 : <br>
					<textarea rows="5" cols="30" id="textarea_box" name="content">${param.content}</textarea>
				</p>
				<input type="submit" value="등록">
				<button type="button" onclick="javascript:history.go(-1);">취소</button>
			</form>
		</div>
	</div>
</main>

<%@include file="/WEB-INF/views/footer.jsp"%>