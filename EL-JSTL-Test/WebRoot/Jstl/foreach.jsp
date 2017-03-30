<%@page import="com.el.test.User"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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

<h4>JSTL方式</h4>
<h4>遍历数组</h4>
<%
	String [] arrs={"小明","小白","小兰","小红"};
	request.setAttribute("arrs", arrs);
 %>
 
 <!--  for(String s : arrs){ } 
 	var=s
 	items=arrs
 -->
 <c:forEach var="s" items="${ arrs }">
 ${ s }
 </c:forEach>
 
 <h4>遍历集合</h4>
 <%
 	List<String> list= new ArrayList<String>();
 	list.add("小明");
 	list.add("小白");
 	list.add("小兰");
 	list.add("小红");
 	request.setAttribute("list", list);
 	
  %>
  <c:forEach var="s" items="${ list }">
  ${s }
  </c:forEach>
  
  <h4>遍历Map集合</h4>
  <%
  	Map<String,String> map=new HashMap<String,String>();
  	map.put("aa", "小明");
  	map.put("bb", "小白");
  	map.put("cc", "小兰");
  	map.put("dd", "小红");
  	request.setAttribute("map", map);
   %>
   <c:forEach var="maps" items="${map }">
   	${maps.key }--${maps.value }
   </c:forEach>
   
   <h4>遍历对象的集合</h4>
   <%
   List<User> uList=new ArrayList<User>();
   uList.add(new User("小明","111"));
   uList.add(new User("小白","222"));
   uList.add(new User("小兰","333"));
   uList.add(new User("小红","444"));
   request.setAttribute("uList", uList);
    %>
    <c:forEach var="user" items="${uList }">
    
    	${user.username }--${user.password} 

    </c:forEach>
 <h4>迭代数据</h4>
 <h5>迭代从1到10</h5>
 <c:forEach var="i" begin="1" end="10" step="1">
 	${ i }
 </c:forEach><br/>
  <c:forEach var="i" begin="1" end="10" step="2">
 	${ i }
 </c:forEach>
 <h4>计算从1加到100的和</h4>
 <c:set var="sum" value="0" scope="page"></c:set>
 <c:forEach var="i" begin="1" end="100" step="1" >
 	<c:set var="sum" value="${sum+1 }"></c:set>
 </c:forEach>
 ${sum }
 
 <h4>遍历10到100的偶数，每到第三个数，显示红色</h4>
 <c:forEach var="i" begin="10" end="100" step="2" varStatus="status">
 	<c:choose>
 		<c:when test="${ status.first }">
 			<font color="blue">
 				${ i }
 			</font>
 		</c:when>
 		<c:when test="${ status.count % 3 eq 0 }">
 			<font color="red">
 				${ i }
 			</font>
 		</c:when>
 		<c:otherwise>
 			${i }
 		</c:otherwise>
 	</c:choose>
 </c:forEach>
</body>
</html>











