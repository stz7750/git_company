<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h3>test.jsp 실행 결과</h3>
<!-- request에 저장된 attribute값 출력(EL/JSTL 사용) -->
<p>현재 시간 : <fmt:formatDate value="${today}" pattern="yyyy/MM/dd hh:mm"/></p>
<p>문자열 리스트 : 
<c:forEach items="${list}" var="str">
	${str} ,
</c:forEach>
<br>
${list}
</p>
<p>멤버 리스트 : <br>
<c:forEach items="${mlist}" var="mem">
	${mem.name}/${mem.age}<br>
</c:forEach>
</p>
</body>
</html>