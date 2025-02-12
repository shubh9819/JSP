<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import ="com.basic.*" %>
       <%@page import =" java.util.ArrayList,
                              java.util.List " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
jpojo ac=new jpojo();
jdoa ab=new jdoa();
List<jpojo> abcde=new ArrayList();
try{
abcde=ab.viewall();
out.println("<table>");
out.println("    <tr>\r\n"
		+ "<th>ID</th>\r\n"
		+ "<th>Name</th>\r\n"
		
		+ "<th>Email</th>\r\n"
		+ "<th>Salary</th>\r\n"
		+ "<th>Edit</th>\r\n"
		+ "<th>Delete</th>\r\n"
		+ "  </tr>  ");

for(jpojo rs:abcde) 
{

	
	out.println("<tr>\r\n"
			+ "        <td>"+rs.getId()+"</td>\r\n"
			+ "        <td>"+rs.getName()+"</td>\r\n"
		
			+ "        <td>"+rs.getMail()+"</td>\r\n"
			+ "        <td>"+rs.getSal()+"</td>\r\n"
			+ "        <td><a href='edit.jsp?id="+rs.getId()+"'>"+"Edit"+"</a></td>\r\n"
			+ "        <td><a href=''>Deleate</a></td>\r\n"
			+ "    </tr>");

}

}
catch (Exception e) {

}

//System.out.print(abc.getName());

%>

</body>
</html>