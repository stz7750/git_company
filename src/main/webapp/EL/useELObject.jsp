<%@ page contentType = "text/html; charset=utf-8" %>
<%
	request.setAttribute("name", "최범균");
	session.setAttribute("name", "kimjava");
%>
<html>
<head><title>EL Object</title></head>
<body>

요청 URI: ${pageContext.request.requestURI}<br>
request의 name 속성: ${requestScope.name}<br>
session의 name 속성 : ${sessionScope.name}<br>
code 파라미터: ${param.code}

</body>
</html>
