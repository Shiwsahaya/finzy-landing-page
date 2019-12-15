import POJO.AdminRecord;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static POJO.Constants.*;

@WebServlet("/"+LOGIN_REQUEST)
public class Authentication extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("PU");
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        String name=request.getParameter("name");
        String password=request.getParameter("password");
        AdminRecord userDetail=entityManager.find(AdminRecord.class,name);
        if(userDetail!=null&&userDetail.getPassword().equals(password))
        {
            HttpSession session=request.getSession();
            session.setAttribute("sessionName",name);
            RequestDispatcher requestDispatcher=request.getRequestDispatcher("/Login");
            requestDispatcher.forward(request,response);

        }
        else
        {
            response.sendRedirect("login?msg=Enter Correct User Name and Password");
        }


    }

}
