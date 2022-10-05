<%@ page contentType = "text/html; charset=utf-8" %>
<%
//url이 바뀌어도 계속 유지해야하는 데이터는 session에 저장
	session.setAttribute("MEMBERID", "madvirus");
	session.setAttribute("NAME", "su");
%>
<html>
<head><title>세션에 정보 저장</title></head>
<body>

세션에 정보를 저장하였습니다.

</body>
</html>
