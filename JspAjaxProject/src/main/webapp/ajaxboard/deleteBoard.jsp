<%@page import="ajaxboard.AjaxBoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<%
	String num=request.getParameter("num");
	AjaxBoardDao dao= new AjaxBoardDao();

	//delete메서드로 전달
	dao.deleteBoard(num);

	%>
