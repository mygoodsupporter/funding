<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/login" method="post">
		아이디: <input type="text" name="m_id"><br>
		비밀번호: <input type="password" name="m_password"><br>
		<input type="submit" value="로그인">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

	</form>
</body>
</html>