<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var ="context"><%=request.getContextPath()%></c:set>

<%@include file="/WEB-INF/views/header.jsp"%>

	<main class="flex-shrink-0">
		<div class="container">
			<div class="my-3 p-5 bg-body rounded shadow-sm">
				<div class="border-bottom mb-4">
					<h2 class="text-center text-secondary mb-4"><strong>/r/ κόσμος</strong></h2>
				</div>
				<!-- 1. 게시글 등록 -->
				<div class="m-3 text-center">
					<form action="${context}/article/write.do" class="mb-5">
						<input type="submit" class="indexbtn btn btn-primary text-center" value="게시글 등록" /><br>
					</form>
					<!-- 2. 게시글 조회 -->
					<form action="${context}/article/read.do" class="mb-5">
						<input type="submit" class="indexbtn btn btn-secondary text-center" value="최근 게시글 보기" /><br>
					</form>
					<!-- 3. 게시글 수정 -->
					<form action="${context}/article/modify.do" class="mb-5">
						<input type="submit" class="indexbtn btn btn-info text-center" value="최근 게시글 수정" /><br>
					</form>
					<!-- 4. 게시글 삭제 -->
					<form action="${context}/article/delete.do">
						<input type="submit" class="indexbtn btn btn-warning text-center" value="최근 게시글 삭제" /><br>
					</form>
				</div>
			</div>
		</div>
	</main>
	
<%@include file="/WEB-INF/views/footer.jsp"%>
