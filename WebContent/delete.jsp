<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PersonDao" %>

<%
	//파리미터 꺼내기  (db전달해서 삭제할 id값)	
	String id = request.getParameter("id");
	int personId = Integer.parseInt(id);	
	
	System.out.println(personId);
	
	//personDao의 personDelete(3) 통해서 3번지우기
	PersonDao personDao = new PersonDao();
	int count = personDao.personDelete(personId);
	System.out.println(count);
	
	//리스트 보여주기 -->리스트로 리다이렉트
	//response.sendRedirect("./list.jsp");
	
%>
