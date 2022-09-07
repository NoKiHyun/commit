<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %> <!-- 헤더 삽입 -->
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShooT :: 비상하는 해외축구 커뮤니티</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css">
<body>
<main>
	<button id="list_align_a" onclick="#">◀ 번호순 정렬 ▶</button>
	<button id="list_align_b" onclick="#">◀ 추천순 정렬 ▶</button>
	<button class="notice_insert" onclick="location.href='${pageContext.request.contextPath}/notice_insert.do'">글쓰기</button>
		<br><br>
		<div id="notice">
		<table>
	        <tr>
	          <th>글 번호</th> <th>제목</th> <th>작성자</th> <th>등록일</th> <th>조회수</th>
	        </tr>
	        <tr> <td>1</td> <td><a href="${pageContext.request.contextPath}/notice_view.do">테스트용 게시글 제목</a></td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
	        <tr> <td>2</td> <td>테스트용 게시글 제목</td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
	        <tr> <td>3</td> <td>테스트용 게시글 제목</td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
	        <tr> <td>4</td> <td>테스트용 게시글 제목</td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
	        <tr> <td>5</td> <td>테스트용 게시글 제목</td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
	        <tr> <td>6</td> <td>테스트용 게시글 제목</td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
	        <tr> <td>7</td> <td>테스트용 게시글 제목</td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
	        <tr> <td>8</td> <td>테스트용 게시글 제목</td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
	        <tr> <td>9</td> <td>테스트용 게시글 제목</td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
	        <tr> <td>10</td> <td>테스트용 게시글 제목</td> <td>도배맨</td> <td>2022.08.30</td> <td>77,777</td> </tr>
		</table>
		<br>
		<button class="notice_insert" onclick="location.href='${pageContext.request.contextPath}/notice_insert.do'">글쓰기</button>
		<div id="page">
		<< < <b>1</b> 2 3 4 5 6 7 8 9 10 > >>
		</div>
		<div id="search">
			<select name="search_type" id="search_type">
			<option value="title">제목</option>
			<option value="writer">작성자</option>
			</select>
			<input type="text" id="search_value" name="search_value" placeholder="검색할 내용 입력" />
			<button id="search_submit" onclick="#">검색</button>
		</div>
	</div>
</main>
</body>
</html>

<%@ include file = "../include/footer.jsp" %> <!-- 풋터 삽입 -->