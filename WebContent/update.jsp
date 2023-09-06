<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PersonDao"%>

<%
	//파라미터 꺼내기 vo묶기
	int personId = Integer.parseInt(request.getParameter("id"));	      
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(personId, name, hp, company);
	System.out.println(personVo);
	
	//DB랑 일하기
	PersonDao personDao = new PersonDao();
	int count = personDao.personUpdate(personVo);
	System.out.println(count);
	
	//화면처리
	response.sendRedirect("./list.jsp");
%>

