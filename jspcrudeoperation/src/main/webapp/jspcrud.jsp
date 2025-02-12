<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="com.basic.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="abc" class="com.basic.jpojo"></jsp:useBean>
<jsp:setProperty property="*" name="abc"/>

<%
jdoa ab=new jdoa();
System.out.print(abc.getName());
ab.save(abc);
%>

</body>
</html>