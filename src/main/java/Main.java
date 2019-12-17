import POJO.Contact;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static POJO.Constants.CONTACT_US_JSP_PAGE_TO_MAIN_JAVA_CLASS;
import static POJO.Constants.TO_LOGIN_JSP_PAGE;

@WebServlet("/"+ CONTACT_US_JSP_PAGE_TO_MAIN_JAVA_CLASS)
public class Main extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("PU");
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        String name=request.getParameter("name");
        String mobile=request.getParameter("mobile");
        String email=request.getParameter("email");
        String message=request.getParameter("message");

        Contact contactObject=new Contact();
        contactObject.setName(name);
        contactObject.setMobile(mobile);
        contactObject.setEmail(email);
        contactObject.setMessage(message);

        entityManager.getTransaction().begin();
        entityManager.persist(contactObject);
        entityManager.getTransaction().commit();
        response.getWriter().println("<h1>Thank you for response. We will get back to you(:</h1>");
    }
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
        response.sendRedirect(TO_LOGIN_JSP_PAGE);
    }
}