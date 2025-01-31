<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("connection establish|");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shubham","root","root");
	System.out.println("con establish");
	
	 //Statement stmt=con.createStatement();
	 
	 PreparedStatement rs= con.prepareStatement("insert into emp(empname,age) values('rahul',23)");
	 rs.executeUpdate();

    // ResultSet re= stmt.executeQuery("select * from emp");

    // while(rs.next())
   //  {
   //      System.out.println(rs.getString(1));
    //     System.out.println(rs.getInt(2));
        
    // }

	
}catch(Exception e){
	System.out.println(e);
}

%>
hello
</body>
</html>