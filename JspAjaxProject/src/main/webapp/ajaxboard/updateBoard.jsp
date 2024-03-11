<%@page import="ajaxboard.AjaxBoardDao"%>
<%@page import="ajaxboard.AjaxBoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

///////////////////수정빼고 !!!!!!!!!!!!@@@@
	//한글엔코딩
	request.setCharacterEncoding("utf-8");
	
	String num=request.getParameter("num");
	String writer=request.getParameter("writer");
	String subject=request.getParameter("subject");
	String content=request.getParameter("content");
	String avata=request.getParameter("avata");
	
	AjaxBoardDto dto=new AjaxBoardDto();
	dto.setNum(num);
	dto.setWriter(writer);
	dto.setSubject(subject);
	dto.setContent(content);
	dto.setAvata(avata);
	
	//dao 선언
	AjaxBoardDao dao=new AjaxBoardDao();
	//수정메서드호출
	dao.updateBoard(dto);
%>