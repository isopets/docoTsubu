<%-- リスト10-17の状態 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.User,model.Mutter,java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
<h1>どこつぶメイン</h1>
<p>
<c:out value="${loginUser.name }" />さん、ログイン中
<a href="/docoTsubu_sample/Logout">ログアウト</a>
</p>
<p><a href="?docoTsubu_sample/Main">更新</a></p>
<form action="/docoTsubu_sample/Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<c:if test="${not empty errorMsg }">
	<p>${errorMsg}</p>
</c:if>
<c:forEach var="mutter" items="${mutterList}">
<p><c:out value="${mutter.username}" />:
	<c:out value="${mutter.text}" />
</p>
</c:forEach>

<jsp:include page="/WEB-INF/jsp/footer.jsp" />

<!-- <h1>どこつぶメイン</h1> -->
<!-- <p> -->
<%-- <%= loginUser.getName() %>さん、ログイン中 --%>
<!-- <a href="/docoTsubuSample/Logout">ログアウト</a> -->
<!-- </p> -->
<!-- <p><a href="/docoTsubuSample/Main">更新</a></p> -->
<!-- <form action="/docoTsubuSample/Main" method="post"> -->
<!-- <input type="text" name="text"> -->
<!-- <input type="submit" value="つぶやく"> -->
<!-- </form> -->
<%-- <% if(errorMsg != null){ %> --%>
<%-- <p><%= errorMsg %></p> --%>
<%-- <% } %> --%>
<%-- <% for(Mutter mutter : mutterList){%> --%>
<%-- <p><%=mutter.getUserName()%>：<%=mutter.getText()%></p> --%>
<%-- <% } %> --%>
</body>
</html>