<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<h1>게시글 수정</h1>
	<div style="width:100%;">
		<form action="board" method="post">
		<input type="hidden" name="_method" value="put">
		<table border="1px" style="text-align:center">
			<colgroup>
				<col style="width:20%"/>
				<col style="width:80%"/>
			</colgroup>
			<tr>
				<td>제목</td>
				<td><input type="text" name="board_title" size="135" maxlength="200" value="<c:out value='${board.board_title }' />"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="board_content" rows="20" cols="100"><c:out value='${board.board_content }' /></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<label><input type="checkbox" name="is_notice" value="false">공지</label>
				</td>
			</tr>
		</table>
		<input type="submit" value="글 입력">
		<button type="button" onclick="location.href='boardList'">목록</button>
		<input type="hidden" name="board_no" value="<c:out value="${board.board_no }" />">
		<input type="hidden" name="board_hit" value="<c:out value="${board.board_hit }" />">
		<input type="hidden" name="member_id" value="test">
		</form>
	</div>
</body>
</html>