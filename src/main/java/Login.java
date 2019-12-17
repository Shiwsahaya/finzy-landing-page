import POJO.Contact;
import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import static POJO.Constants.AUTHENTICATION_JAVA_CLASS_TO_LOGIN_JAVA_CLASS;
import static POJO.Constants.LOGIN_CLASS_TO_TABLE_JSP_PAGE;

@WebServlet(AUTHENTICATION_JAVA_CLASS_TO_LOGIN_JAVA_CLASS)//from Authentication
public class Login extends  HttpServlet{

    public void doPost(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws IOException, ServletException {
        EntityManagerFactory entityManagerFactory= Persistence.createEntityManagerFactory("PU");
        EntityManager entityManager=entityManagerFactory.createEntityManager();
        CriteriaBuilder cb=entityManager.getCriteriaBuilder();
        CriteriaQuery<Contact>cq=cb.createQuery(Contact.class);
        Root<Contact>contactRoot=cq.from(Contact.class);
        CriteriaQuery<Contact>select=cq.select(contactRoot);
        Query query=entityManager.createQuery(select);
        List<Contact>results=query.getResultList();
        httpServletRequest.setAttribute("results",results);
        ServletContext servletContext=this.getServletContext();//Get a servlet context instance from the servlet instance
        //Get a request dispatcher from the servlet context instance
        RequestDispatcher requestDispatcher=servletContext.getRequestDispatcher("/"+ LOGIN_CLASS_TO_TABLE_JSP_PAGE);
        requestDispatcher.forward(httpServletRequest,httpServletResponse);
    }

}
