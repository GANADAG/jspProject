<?xml version="1.0" encoding="UTF-8"?>
<%@page import="java.sql.SQLException"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="mysql.db.DbConnect"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <data>
    <%
		//mysql의 food테이블이 데이타를 읽어서 
		DbConnect db=new DbConnect();
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;//조회
		
		String sql="select * from food order by num";
		
		try{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();//테이블형태의 값을 조회
			
			//전체조회 while문..하나는 if문
			while(rs.next())
			{
				String num=rs.getString("num");
				String foodname=rs.getString("foodname");
				String foodphoto=rs.getString("foodphoto");
				String price=rs.getString("price");
				int cnt=rs.getInt("cnt");
				%>
				
				
				<food num="<%=num %>">
					<foodname><%=foodname %></foodname>
					<foodphoto><%=foodphoto %></foodphoto>
					<price><%=price %></price>
					<cnt><%=cnt %></cnt>
				
				</food>
				
			<%}
			
			
		}catch(SQLException e){
			
		}finally{
			db.dbClose(rs, pstmt, conn);
		}
	%>
</data>    
