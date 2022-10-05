<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
	Date time = new Date();
	SimpleDateFormat formatter = 
	  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<html>
<meta charset="utf-8">
<head><title>세션정보</title></head>
<body>
세션ID: <%= session.getId() %> <br>
<%
	time.setTime(session.getCreationTime());
%>
세션생성시간: <%= formatter.format(time) %> <br>
<%
	time.setTime(session.getLastAccessedTime());
%>
최근접근시간: <%= formatter.format(time) %>

</body>
</html>