<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
.center{
margin: 5px 25px; padding: 20px
}
.textarea
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>Insert</title>
</head>
<body>
    <form class="center" method="post">
        <h2>Insert Page</h2>
        <div class="form-group">
              <label>제목</label>
            <input type="text" class="form-control" name="notice_title" placeholder="제목 작성해주세요.">
        </div>
        <div class="form-group">
              <label>작성자</label>
            <input type="text" class="form-control" name="notice_writer" placeholder="이름 작성해주세요.">
        </div>
          <div class="form-group">
        	 <label>내용</label><br>
            <textarea name="notice_content" cols="40" rows="40" style="width:100%; height:100%;"></textarea>
        </div>
    <button type="submit" class="btn btn-outline-info">등록</button>
    <button type="button" class="btn btn-outline-info"><a href="list">돌아가기</a></button>
    </form>
</body>
</html>
