<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/css.css"></link>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="static/header.jsp" %>	
<%@include file="static/nav.jsp" %>

<%
	String section = request.getParameter("section") != null ? request.getParameter("section") : "";

	switch(section) {
	case "oudition_register":
		%> <%@include file="page/oudition_register.jsp" %> <%
		break;
	case "oudition_lookup":
		%> <%@include file="page/oudition_lookup.jsp" %> <%
		break;
	case "oudition_lookup_score":
		%> <%@include file="page/oudition_lookup_score.jsp" %> <%
		break;
	case "oudition_lookup_rank":
		%> <%@include file="page/oudition_lookup_rank.jsp" %> <%
	default: 
		%> <%@include file="static/index.jsp" %> <%
	}
	
%>

<%@include file="static/footer.jsp" %>
</body>
</html>