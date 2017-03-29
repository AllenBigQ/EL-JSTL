<%@page import="com.el.test.User"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>通过EL获取域中的值</title>
</head>
<body>

<h4>通过EL获取域对象中的值</h4>
<% 
pageContext.setAttribute("username", "小白") ;
request.setAttribute("username", "小明") ;
%>
<!--简写 同名时默认先从最小的域中获取-->
${ username }
<!-- 完整写法 -->
${pageScope.username }
${requestScope.username }

<h4>域对象中数组的值</h4>
<%
String []str={"张三","李四","王五"};
request.setAttribute("str", str);
 %>
 ${str[1] }
 
 <h4>域对象中集合的值</h4>
 <%
 List<String> list = new ArrayList<String>();
list.add("张三");
list.add("李四");
list.add("王五");
request.setAttribute("list", list);
  %>
${list[2]}

<h4>域对象中map集合的值</h4>
<%
Map<String,String> map = new HashMap<String,String>();
map.put("aa", "张三");
map.put("bb", "李四");
map.put("cc", "王五");
request.setAttribute("map", map);
 %>
 ${map.bb}

<h4>域中集合中是对象类型的值</h4>
<%
List<User> user=new ArrayList<User>();
user.add(new User("小明","111")) ;
user.add(new User("小白","222")) ;
user.add(new User("小黄","333")) ;
request.setAttribute("user", user);
 %>
 ${user[0].username }
 ${user[1].username }
 ${user[2].password }
</body>
</html>



