<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>list</title>
</head>
<body>
<form name="userForm">
<h1>List page</h1>
<table>
 <thead>
  <tr>
  <th scope="col">번호</th>
  <th scope="col">제목</th>
  <th scope="col">내용</th>
  <th scope="col">작성자</th>
  <th scope="col">작성일</th>
  <th scope="col">조회수</th>
  </tr>
 </thead>
 
 <tbody>
	 <c:forEach items="${list}" var="list">
	 <tr>
			<td class="text"><a href="${path}/notice/modify?notice_idx=${list.notice_idx}">${list.notice_idx}&nbsp;</a></td>	 
            <td class="text">${list.notice_title}&nbsp;</td>
            <td class="text">${list.notice_content}&nbsp;</td>
            <td class="text">${list.notice_writer}&nbsp;</td>
             <td class="text"><fmt:formatDate value="${list.notice_wdate}" pattern="yyyy/MM/dd" /></td>
            <td class="text">${list.notice_hit}"&nbsp;</td>
	 </tr>
	</c:forEach>
 </tbody> 
</table>
<a href="<c:url value='/notice/insert'/>" role="button" class="btn btn-outline-info">글쓰기</a>
</form>

</body>
</html>