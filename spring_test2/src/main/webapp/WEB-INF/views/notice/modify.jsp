<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
    <h2>modify page</h2>
    <table border="1">
        <th>정보</th>
        <th>내용</th>
        <tr>
            <td>작성일자</td>
            <td><fmt:formatDate value="${data.notice_wdate}" pattern="yyyy-MM-dd" />
            </td>
        </tr>
         <tr>
            <td>글번호</td><td>${data.notice_idx}</td>
        </tr>
        <tr>
            <td>제목</td><td>${data.notice_title}</td>
        </tr>
        <tr>
            <td>이름</td><td>${data.notice_writer}</td>
        </tr>
        <tr>
            <td>내용</td><td>${data.notice_content}</td>
        </tr>
    </table>
    <a href="/notice/update?notice_idx=${data.notice_idx}" role="button" class="btn btn-outline-info">수정</a>
    <a href="/notice/delete?notice_idx=${data.notice_idx}"role="button" class="btn btn-outline-info">삭제</a>
    
</body>
</html>
