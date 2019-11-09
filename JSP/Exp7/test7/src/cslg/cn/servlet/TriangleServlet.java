package cslg.cn.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class TriangleServlet
 */
@WebServlet("/TriangleServlet")
public class TriangleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TriangleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		// 从input.jsp 接收三条边输入的数据，创建响应的JavaBean 实例，验证输入合法性后再计算三角形面积结果发给show.jsp。
		// 如果输入比较复杂，验证合法性工作怎么处理比较好
		String length1 = request.getParameter("a");
		String length2 = request.getParameter("b");
		String length3 = request.getParameter("c");	
		//1.校验输入的三条边是否为大于0的数值
		double num1 = 0;
		double num2 = 0;
		double num3 = 0;
		try {
			num1 = Double.parseDouble(length1);
			num2 = Double.parseDouble(length2);
			num3 = Double.parseDouble(length3);
		} catch (NumberFormatException e) {
			session.setAttribute("error", "输入的三条边的长度必须为大于0的数值");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		
		if(num1<=0||num2<=0||num3<=0){
			session.setAttribute("error", "输入的三条边的长度必须为大于0的数值");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		//2.校验是否能组成三角形
		Triangle triangle = new Triangle();
		boolean isTriangle = triangle.isTriagle(num1, num2, num3);
		if (!isTriangle) {
			session.setAttribute("error", "输入的三条边的长度不能组成三角形，必须任何两条边之和大于第三边");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}

		//3.计算面积
		double area=triangle.Triangle(num1,num2,num3);
		session.setAttribute("area", area);
		response.sendRedirect(request.getContextPath() + "/show.jsp");
	}

}
