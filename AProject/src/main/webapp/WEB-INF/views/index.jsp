<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<% response.setHeader("Set-Cookie", "JSESSIONID=" + request.getSession().getId() + "; HttpOnly"); %>
<%
String browser = request.getHeader("User-Agent");
String nextUrl = "/flight/main.do";

if (!request.getContextPath().equals("") && !request.getContextPath().equals("/")) {
	nextUrl = request.getContextPath() + nextUrl;
}

response.sendRedirect(nextUrl);
%>