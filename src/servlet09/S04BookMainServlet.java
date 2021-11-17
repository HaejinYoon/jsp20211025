package servlet09;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample03javabean.Bean06;

/**
 * Servlet implementation class S04BookMainServlet
 */
@WebServlet("/servlet09/main")
public class S04BookMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public S04BookMainServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = "/WEB-INF/view/servlet09/main.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//request.setCharacterEncoding("utf-8");

		HttpSession session = request.getSession();
		List<Bean06> list = (List<Bean06>) session.getAttribute("books");
		
		if (list == null) {
			list = new ArrayList<>();
			session.setAttribute("books", list);
		}

		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String priceStr = request.getParameter("price");
		String publisher = request.getParameter("publisher");
		String stockStr = request.getParameter("stock");
		
		String indexStr = request.getParameter("id");

		int price = Integer.parseInt(priceStr);
		int stock = Integer.parseInt(stockStr);
		
		if(indexStr!=null) {
			int index = Integer.parseInt(indexStr);
			list.remove(index);
		}
		Bean06 book = new Bean06(title, writer, price, publisher, stock);
		list.add(book);
		
		// 3. 비즈니스 로직
		String location = request.getContextPath()+"/servlet09/main";
		response.sendRedirect(location);
	}

}
