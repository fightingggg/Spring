<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<style>

td {
width:130px;
height:40px;
text-align:center;
font-weight:bold;
border:1px solid green;
}

</style>
<body>

<form action="/course" method="post">
<table>
<tr>	
	<td>성별</td>		
	<td><input type="radio" name="gender" value="male">남성 &nbsp;</td>	
	<td><input type="radio" name="gender" value="female">여성
	</td>
</tr>

<tr>	
	<td>도시</td>		
	<td colspan="2">
		<input type="radio" name="city" value="cheonan">천안 &nbsp;
		<input type="radio" name="city" value="suwon">수원 &nbsp;
		<input type="radio" name="city" value="seoul">서울 &nbsp;
	</td>	
</tr>


<tr>	
	<td>기간</td>		
	<td colspan="2"><input type="date" name="start"> ~ <input type="date" name="end"></td>	
		
</tr>



<tr>	<td colspan="3">수업과정</td>	</tr>
<tr>	
	<td colspan="3" style="text-align:left">
		<input type="checkbox" name="subject" value="Java">자바 &nbsp;
		<input type="checkbox" name="subject" value="Java Script">자바스크립트 &nbsp;
		<input type="checkbox" name="subject" value="HTML/CSS">HTML/CSS &nbsp; <br>
		
		<input type="checkbox" name="subject" value="DB">DB &nbsp;
		<input type="checkbox" name="subject" value="Spring">Spring &nbsp;
		<input type="checkbox" name="subject" value="R">R언어 &nbsp; <br>
		
		<input type="checkbox" name="subject" value="Arduino">Arduino &nbsp;
		<input type="checkbox" name="subject" value="ML">ML &nbsp;
		<input type="checkbox" name="subject" value="DL">DL &nbsp;
	</td>	
</tr>

<tr>	
	<td><input type="submit" value="send"></td>	
	<td colspan="2"><input type="reset" value="cancel"></td>	
</tr>

</table>
</form>





</body>
</html>