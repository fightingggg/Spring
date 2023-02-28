<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
입력결과 <br>

성별 : ${gender}<br><br>
도시 : ${city}<br><br>


시작일 : ${start}<br>
종료일 : ${end}<br><br>

수료과목 : 
<c:forEach var="element" items="${subject}">
${element} &nbsp;
</c:forEach><br><br>

<form action="/home">
<input type="submit" value="확인">
</form>




<%-- 선생님:

성별 : ${gender}<br>
도시 : ${city}<br>
기간 : ${start_dt} ~ ${end_dt}<br>

과정 : 
<c:forEach items="${course}" var="lesson">	 class 는 참고로 예약어라 안됨. 그래서 lession 하셈
${lession} &nbsp;
</c:forEach>




 --%>













</body>
</html>