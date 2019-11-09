package filter;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
public class LogFilter implements Filter {
	 private FilterConfig config;
	    @Override
	    public void init(FilterConfig filterConfig) throws ServletException {
	        this.config=filterConfig;
	    }

	    @Override
	    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
	    	HttpServletRequest req = (HttpServletRequest) servletRequest;
	        HttpServletResponse res = (HttpServletResponse) servletResponse;
	        if(req.getParameter("name").substring(0,1).equals("T")){
	            res.sendRedirect("failure.jsp");
	        }else {
	            req.getRequestDispatcher("LoginServlet").forward(req,res);
	        }

	    }

	    @Override
	    public void destroy() {
	        config=null;
	    }

}
