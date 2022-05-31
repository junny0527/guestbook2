<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
<%@ page import="java.util.List" %>

<%
	List<GuestBookVo> personList = (List<GuestBookVo>)request.getAttribute("bList");
%>


<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<form action ="./gbc?action=add" method ="post">
		<table border = "1">
			<tr>
				<td>이름</td>
				<td><input type="text" name ="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name ="password" value=""></td>
			</tr>
			<tr>
				<td colspan ="4"><textarea style = "width:380px; height:200px;" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan ="4">
				<input type ="hidden" name="reg_date" value="">
				<button type= "submit">확인</button></td>
			</tr>
		</table>
	</form>
	
	
	
	
	<%for (int i =1; i<personList.size(); i++) {%>
		<table border ="1">
			<tr>
				<td><%=personList.get(i).getNo()%></td>
				<td><%=personList.get(i).getName()%></td>
				<td><%=personList.get(i).getRegDate()%></td>
				<td><a href ="./gbc?action=deleteForm&no=<%=personList.get(i).getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan ="4"><%=personList.get(i).getContent()%></td>
			</tr>
		</table>
		<br>
	<%}%>	
	

						
</body>
</html>