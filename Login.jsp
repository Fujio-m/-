<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログインページ</title>
<link rel="stylesheet" href="Login.css">
<script>
	function validateForm() {
		var password = document.getElementById("password").value;
		var userId = document.getElementById("userId").value;
			
		if (userId === "") {
			alert("ユーザーIDを入力してください。");
			return false;
		}
		
		if (password.length < 8 || password.length > 16) {
			alert("パスワードは8文字以上16文字以下で入力してください。");
			return false;
		}
		
		return true;
	}
 </script>
</head>
<body>
<div class="form-container">
 <!-- 他のページへの遷移ボタン -->
    <a href="NewAccount.jsp" class="nav-button">新規登録</a>

<h2>ConDateへようこそ！</h2>
    <form method="post" action="LoginServlet" onsubmit="return validateForm();">
        <div>
                <label for="userId">ユーザーID:</label>
                <input type="text" id="userId" name="userId" required>
            </div>
            <div>
                <label for="password">パスワード:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div>
                <button type="submit">ログイン</button>
            </div>
            <div style="color: red;">
                <c:if test="${not empty errorMessage}">
                    ${errorMessage}
                </c:if>
            </div>
        </form>
    </div>
</body>
</html>