import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // フォームからのデータを取得
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // 実際のアプリケーションでは、ここでデータベースに保存する処理を追加します。
        // ここではデモのために、取得したデータを表示するだけにします。

        // レスポンスを生成
        response.setContentType("text/html;charset=UTF-8");
        try (java.io.PrintWriter out = response.getWriter()) {
            out.println("<html><head><title>登録結果</title></head>");
            out.println("<body>");
            out.println("<h2>登録結果</h2>");
            out.println("<p>ID: " + username + "</p>");
            out.println("<p>パスワード: " + password + "</p>");
            out.println("</body></html>");
        }
    }
}
