import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/your-servlet-url")
public class ImageSelectionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // フォームの隠しフィールドからデータを取得
        String selectedImages = request.getParameter("selectedImages");

        // レスポンスの形式をHTMLに設定
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");

        // HTMLのレスポンスを構築
        StringBuilder htmlResponse = new StringBuilder();
        htmlResponse.append("<!DOCTYPE html>");
        htmlResponse.append("<html lang=\"ja\">");
        htmlResponse.append("<head>");
        htmlResponse.append("<meta charset=\"UTF-8\">");
        htmlResponse.append("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
        htmlResponse.append("<title>選択された画像の情報</title>");
        htmlResponse.append("</head>");
        htmlResponse.append("<body>");
        htmlResponse.append("<h1>選択された画像の情報</h1>");
        htmlResponse.append("<p>選択された画像: </p>");

        if (selectedImages != null && !selectedImages.isEmpty()) {
            String[] images = selectedImages.split(",");
            htmlResponse.append("<ul>");
            for (String image : images) {
                htmlResponse.append("<li>").append(image).append("</li>");
            }
            htmlResponse.append("</ul>");
        } else {
            htmlResponse.append("<p>画像は選択されていません。</p>");
        }

        htmlResponse.append("</body>");
        htmlResponse.append("</html>");

        // レスポンスをクライアントに返す
        response.getWriter().write(htmlResponse.toString());
    }
}
