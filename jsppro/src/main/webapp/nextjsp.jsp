<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String gender=request.getParameter("gender");


%>
<%=name %>
<br>
<br>

<%=gender %>
<br>
<br>
<%
String[] games;
games=request.getParameterValues("game");
out.println("your selected games is ");
if (games!=null){
	for(int i=0;i<games.length;i++){
	out.println("  "+games[i]);	
	}
}
%>
</body>
</html>