<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var ="context"><%=request.getContextPath()%></c:set>

<%@include file="/WEB-INF/views/header.jsp"%>
	
	<main class="flex-shrink-0">
		<div class="container">
			<!-- 1. 게시글 등록 -->
			<div class="btn-wrapper">
				<form action="article/write.do">
					<input type="submit" class="justify-content-center w-50 okbtn btn btn-primary" value="게시글 등록" /><br>
					<br>
				</form>
				<!-- 2. 게시글 조회 -->
				<form action="article/read.do">
					<input type="submit" class="justify-content-center w-50 okbtn btn btn-primary" value="최근 게시글 보기" /><br>
					<br>
				</form>
				<!-- 3. 게시글 수정 -->
				<form action="article/modify.do">
					<input type="submit" class="justify-content-center w-50 okbtn btn btn-primary" value="최근 게시글 수정" /><br>
					<br>
				</form>
				<!-- 4. 게시글 삭제 -->
				<form action="article/delete.do">
					<input type="submit" class="justify-content-center w-50 okbtn btn btn-primary" value="최근 게시글 삭제" /><br>
					<br>
				</form>
			</div>
		</div>
	</main>
	
<%@include file="/WEB-INF/views/footer.jsp"%>
