import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import static POJO.Constants.ERROR;


public class JspFilter implements Filter {
    public void  doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req= (HttpServletRequest) request;
       req.getRequestDispatcher("/"+ERROR).forward(request,response);

    }
}