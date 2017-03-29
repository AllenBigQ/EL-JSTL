<%--
	JSTL:
			①导入相应的jar包 jstl和standard
			②新建jsp文件后引入标签库
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			③直接使用标签库
--%>

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
<%
	int a=10;
	if(a==10){
%>
<%=a=10 %>
<%}
 %>
 
<h4>使用JSTL标签库的方式</h4>
<c:set var="i" value="10"></c:set>
<c:if test="${i eq 10}">
	<font color="red">i=10</font>
</c:if>
</body>
</html>




