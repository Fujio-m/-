<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規登録画面</title>NewAccount.css
<link rel="stylesheet" href="NewAccount.css">
</head>
<body>
<div class="form-container">
        <h2>新規登録</h2>
        <form action="RegisterServlet " method="post">
            <div class="form-group">
                <label for="username">ID:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">パスワード:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="登録">
            </div>
        </form>
    </div>
</body>
</html>