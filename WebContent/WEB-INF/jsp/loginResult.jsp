<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User" %>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
</head>
<body>
<h1>どこつぶログイン</h1>
<% if(loginUser != null) { %>
<p>ログインに成功しました</p>
<p>ようこそ<%= loginUser.getName() %>さん</p>
<a href="/docoTsubu_sample/Main">つぶやき投稿・閲覧へ</a>
<% } else { %>
<p>ログインに失敗しました</p>
<a href="/docoTsubu_sample/">TOPへ</a>
<% } %>
<jsp:include page="/WEB-INF/jsp/footer.jsp" />
</body>
</html>