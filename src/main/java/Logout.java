import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static POJO.Constants.LOG_OUT_REQUEST;

@WebServlet("/"+LOG_OUT_REQUEST)
public class Logout extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session =request.getSession();
        session.removeAttribute("sessionName");
        session.invalidate();
        response.sendRedirect("login");
    }
}
