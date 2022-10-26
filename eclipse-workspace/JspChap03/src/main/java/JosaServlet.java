

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JosaServlet
 */
@WebServlet("/josa1")
public class JosaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JosaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		String fruit = request.getParameter("fruit");
		String movie = request.getParameter("movie");
		String gym = request.getParameter("gym");
		
		PrintWriter out = response.getWriter();
		out.println("당신은 " + fruit + " 을/를 좋아하고 "+ movie+" 영화를 좋아하고 "+gym+" 을/를 좋아합니다.");
	}

}
