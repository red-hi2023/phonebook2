<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>

<%@ page import="com.javaex.vo.PersonVo"%>
<%@ page import="com.javaex.dao.PersonDao"%>


<%
	//파라미터의 값 꺼내오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");

	//vo묶기
	PersonVo personVo = new PersonVo();
	personVo.setName(name);
	personVo.setHp(hp);
	personVo.setCompany(company);
	
	//테스트 출력
	System.out.println(personVo);
	
	//Dao를 통해서 데이터 저장
	PersonDao personDao = new PersonDao();
	//int count = personDao.personInsert(personVo);
	//System.out.println(count);
	
	////////////////////////////////////////////////////////////////
	//리스트 뿌리기 (http://localhost:8000/phonebook2/list.jsp)  --> 리다이렉트
	
	//response.sendRedirect("./list.jsp");
	
%>

