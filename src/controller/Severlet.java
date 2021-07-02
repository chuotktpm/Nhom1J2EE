package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Severlet
 */
@WebServlet(name = "test", urlPatterns = {"/dashboard","/brand", "/inout", "/inventory", "/storage","/item","/"})
public class Severlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Severlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();

        switch (action) {
		    case "/dashboard":
		        gotoDashBoard(request, response);
		        break;
		    case "/brand":
		        gotoBrand(request, response);
		        break;
		    case "/inout":
		        gotoInOut(request, response);
		        break;
		    case "/item":
		        gotoItem(request, response);
		        break;
		    case "/inventory":
		    	gotoInventory(request, response);
		        break;
		    case "/storage":
		        gotoStorage(request, response);
		        break;
		     default:
		    	gotoDashBoard(request, response);
		    	break;
		}
	}

	private void gotoStorage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.sendRedirect("listkho");
	}

	private void gotoInventory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.sendRedirect("listtonkho");
	}

	private void gotoItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.sendRedirect("listmathang");
	}

	private void gotoInOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("listphieu");
	}

	private void gotoDashBoard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard.jsp");
        dispatcher.forward(request, response);
	}

	private void gotoBrand(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		response.sendRedirect("listBrand");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
