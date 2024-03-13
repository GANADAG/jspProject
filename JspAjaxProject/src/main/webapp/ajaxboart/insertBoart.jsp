<%@page import="ajaxboart.AjaxBoartDao"%>
<%@page import="ajaxboart.AjaxBoartDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String writer=request.getParameter("writer");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String avata=request.getParameter("avata");
	
	AjaxBoartDto dto=new AjaxBoartDto();
	dto.setWriter(writer);
	dto.setSubject(subject);
	dto.setContent(content);
	dto.setAvata(avata);
	
	AjaxBoartDao dao=new AjaxBoartDao();
	
	dao.insertBoart(dto);
%>