<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Database Content</title>
</head>
<body>
     <h2>Select a Name</h2>
    <form action="processSelection.jsp" method="post">
        <label for="nameSelect">名前を選択してください:</label>
        <select id="nameSelect" name="selectedName">
            <% 
                // JDBCドライバのロード
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                // データベース接続情報
                String url = "jdbc:mysql://localhost:3306/sample"; // データベースURL
                String user = ""; // データベースのユーザー名
                String password = ""; // データベースのパスワード
                
                // データベースへの接続
                Connection conn = DriverManager.getConnection(url, user, password);
                
                // SQLクエリの実行
                String sql = "SELECT name FROM sample";
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql);
                
                // データの表示
                while (rs.next()) {
                    String name = rs.getString("name");
            %>
                    <option value="<%= name %>"><%= name %></option>
            <%
                }
                
                // リソースのクローズ
                rs.close();
                stmt.close();
                conn.close();
            %>
        </select>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
