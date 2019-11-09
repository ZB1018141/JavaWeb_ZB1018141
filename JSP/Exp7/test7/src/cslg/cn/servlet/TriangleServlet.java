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
		// ��input.jsp ������������������ݣ�������Ӧ��JavaBean ʵ������֤����Ϸ��Ժ��ټ�������������������show.jsp��
		// �������Ƚϸ��ӣ���֤�Ϸ��Թ�����ô����ȽϺ�
		String length1 = request.getParameter("a");
		String length2 = request.getParameter("b");
		String length3 = request.getParameter("c");	
		//1.У��������������Ƿ�Ϊ����0����ֵ
		double num1 = 0;
		double num2 = 0;
		double num3 = 0;
		try {
			num1 = Double.parseDouble(length1);
			num2 = Double.parseDouble(length2);
			num3 = Double.parseDouble(length3);
		} catch (NumberFormatException e) {
			session.setAttribute("error", "����������ߵĳ��ȱ���Ϊ����0����ֵ");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		
		if(num1<=0||num2<=0||num3<=0){
			session.setAttribute("error", "����������ߵĳ��ȱ���Ϊ����0����ֵ");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}
		//2.У���Ƿ������������
		Triangle triangle = new Triangle();
		boolean isTriangle = triangle.isTriagle(num1, num2, num3);
		if (!isTriangle) {
			session.setAttribute("error", "����������ߵĳ��Ȳ�����������Σ������κ�������֮�ʹ��ڵ�����");
			response.sendRedirect(request.getContextPath() + "/input.jsp");
			return;
		}

		//3.�������
		double area=triangle.Triangle(num1,num2,num3);
		session.setAttribute("area", area);
		response.sendRedirect(request.getContextPath() + "/show.jsp");
	}

}
