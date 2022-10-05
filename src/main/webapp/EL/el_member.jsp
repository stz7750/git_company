<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="el.Member" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% Member m = new Member() ;
	m.setName("이름1");
%>
<c:set var="m" value="<%= m %>"/>
<c:set var="name" value="#{m.name}"/>

<% m.setName("이름2"); %>
name에 "이름2" 저장 후 <br>
${name}<br>
<%m.setName("이름3"); %>
name에 "이름3" 저장 후 <br>  
${name}

</body>
</html>