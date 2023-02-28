<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page session="true"%>	<%-- 이거 꼭 써줘야 세션을 사용할 수 있음 --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>




<%-- 

<h1>userid [<%=session.getAttribute("userid")%>]</h1>
<% if(session.getAttribute("userid")==null){ %>			 세션체크함
	<a href='/login'>로그인</a> &nbsp; <a href='/signin'>회원가입</a>
<% } else { 
	out.println(session.getAttribute("userid"));		
%>														 유저아이디출력 
	&nbsp;<a href='/logout'>로그아웃</a>
<%} %>

 scriptlet 이라고 부른다 위에코드. 
 
--%>

<%--------------------------------------------------------------------- --%>

<%-- 이번엔 다른방법으로했을때(server에서 다 처리)  --%>
${logininfo}



</body>
</html>