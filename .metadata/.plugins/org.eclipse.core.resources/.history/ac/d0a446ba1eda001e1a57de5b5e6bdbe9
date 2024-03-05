<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.sql.SQLException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.DbConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <data>
    <%
		//mysql의 team테이블이 데이타를 읽어서 
		DbConnect db=new DbConnect();
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		//SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		String sql="select * from food order by num";
		
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				String foodname=rs.getString("foodname");
				String foodphoto=rs.getString("foodphoto");
				String price=rs.getString("price");
				String cnt=rs.getString("cnt");
				//String writeday=sdf.format(rs.getTimestamp("writeday"));
				%>
				
				<team num="<%=foodname %>">
					<name><%=foodphoto %></name>
					<driver><%=price %></driver>
					<addr><%=cnt %></addr>
				
				</team>
				
	<%}
			
			
		}catch(SQLException e){
			
		}finally{
			db.dbClose(rs, pstmt, conn);
		}
	%>
</data>    
