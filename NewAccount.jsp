<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>新規登録画面</title>
	<link rel="stylesheet" href="NewAccount.css">
</head>
<body>
	<div class="form-container">
		<h2>新規登録</h2>
		<form id="registrationForm" action="RegisterServlet" method="post">
			<div class="form-group">
				<label for="username">ID:</label>
				<input type="text" id="username" name="username" required>
			</div>
			<div class="form-group">
				<label for="password">パスワード:</label>
				<input type="password" id="password" name="password" minlength="8" maxlength="16" required>
			</div>
			<div class="form-group">
				<label for="confirmPassword">パスワード再入力:</label>
				<input type="password" id="confirmPassword" name="confirmPassword" minlength="8" maxlength="16" required>
			</div>
			<div class="form-group">
				<input type="submit" value="登録">
			</div>
			<div id="error-message" style="color: red;"></div>
		</form>
	</div>
	
	 <script>
		document.getElementById('registrationForm').addEventListener('submit', function(event) {
			// フォームのデフォルトの送信を防ぐ
			event.preventDefault();
			
			 // パスワードと再入力パスワードを取得
			var password = document.getElementById('password').value;
			var confirmPassword = document.getElementById('confirmPassword').value;
			
			// エラーメッセージの表示用要素を取得
			var errorMessage = document.getElementById('error-message');
			
			// パスワードが一致するかどうかをチェック
			if (password !== confirmPassword) {
				errorMessage.textContent = 'パスワードが一致しません。';
			} else {
				 // パスワードが一致している場合、フォームを送信
				errorMessage.textContent = '';
				document.getElementById('registrationForm').submit();
			}
		});
	</script>
</body>
</html>