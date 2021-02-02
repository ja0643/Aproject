<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${list }" var="row">
아이디 : ${row.userId }
이름 : ${row.userName }
전화번호 : ${row.phone }
이메일 : ${row.email }
등록일 : ${row.regDate }
!!
</c:forEach>
</body>
</html>