<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>Update page</h2>
    <form name="update" method="POST" action="${path}/notice/update?notice_idx=${data.notice_idx}">
    	<div>글번호: ${data.notice_idx}</div>
        <div>제목 :</div>
        <div><input name="notice_title" value="${data.notice_title}" type="text"/></div>
        <div>이름 : </div>
        <div><input name="notice_writer" value="${data.notice_writer}" type="text"/></div>
        <div>내용 : </div>
        <div><input name="notice_content" value="${data.notice_content}" type="text"/></div>
        <div>작성일자</div>
        <div><fmt:formatDate value="${data.notice_wdate}" pattern="yyyy/MM/dd" /></div>
        <div>        
            <input type="submit" class="btn btn-outline-info" value="완료"/>
            <input type="reset" class="btn btn-outline-info" value="리셋"/>
        </div>
    </form>   
</body>
</html>