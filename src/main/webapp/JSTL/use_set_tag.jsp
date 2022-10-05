<%@page import="java.util.*"%>
<%@page import="el.Member"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%  Member m = new Member();
	Map<String, String> pref = new HashMap<String,String>();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="mem" value="<%= m %>"/>
	<c:set target="${mem}" property="name" value="su"/>
	
	${mem.name }
	<c:set var="pre" value="<%=pref %>"/>
	<c:set var="favoriateColor" value="#{pre.color}"/> 
	
	<br>
	좋아하는 색 : ${favoriateColor}
	<br>
	<c:set target="${pre}" property="color" value="red"/>
	좋아하는 색2 : ${favoriateColor}
	
</body>
</html>










