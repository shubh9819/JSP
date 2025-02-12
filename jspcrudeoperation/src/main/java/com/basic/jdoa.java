package com.basic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class jdoa {
		  Connection connection() throws SQLException, ClassNotFoundException {

		        Class.forName("com.mysql.cj.jdbc.Driver");
		          System.out.println("Driver register");
		          Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/shubham","root","root");
		          System.out.println("Sql Connection Establish");

		       return con;
	}
		  public int save (jpojo ab) throws SQLException {
			  Connection con;
			  try {
				con=connection();
				 PreparedStatement ps=con.prepareStatement("insert into emp(id ,name,mail,sal) values(?,?,?,?);");
				  ps.setInt(1, ab.getId());
				  ps.setString(2, ab.getName());
				  ps.setString(3, ab.getMail());
				  ps.setInt(4,ab.getSal());
				  
				  ps.executeUpdate();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
			return 0;
			  
		  }
		  
		  public List<jpojo> viewall(){
			  List<jpojo> lists=new ArrayList();
			  Connection con;
			  try {
				con=connection();
				PreparedStatement ps=con.prepareStatement("select * from emp");
				ResultSet rs=ps.executeQuery();
				jpojo abcd=new jpojo();
				while(rs.next()) {
					abcd.setId(rs.getInt(1));
					abcd.setName(rs.getString(2));
					abcd.setMail(rs.getString(3));
					abcd.setSal(rs.getInt(4));
					
					lists.add(abcd);
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return lists;
			  
			  
			  
			  
			  
		  }

}