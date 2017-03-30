<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4>传统方式</h4>
<%="Hello"
 %>
<h4>使用jstl和el表达式相结合方式</h4>
<% 
	request.setAttribute("name", "小王");
 %>
<c:out value="Hello"></c:out>
<c:out value="${name }"></c:out>
</body>
</html>