package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Severlet
 */
@WebServlet(name = "test", urlPatterns = {"/dashboard", "/inout", "/place", "/storage","/item"})
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
		    case "/listBrand":
		        gotoBrand(request, response);
		        break;
		    case "/inout":
		        gotoInOut(request, response);
		        break;
		    case "/item":
		        gotoItem(request, response);
		        break;
		    case "/place":
		        gotoPlace(request, response);
		        break;
		    case "/storage":
		        gotoStorage(request, response);
		        break;
		}
	}

	private void gotoStorage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("Storage.jsp");
        dispatcher.forward(request, response);
	}

	private void gotoPlace(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("Place.jsp");
        dispatcher.forward(request, response);
	}

	private void gotoItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("Item.jsp");
        dispatcher.forward(request, response);
	}

	private void gotoInOut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("InOut.jsp");
        dispatcher.forward(request, response);
	}

	private void gotoDashBoard(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("Dashboard.jsp");
        dispatcher.forward(request, response);
	}

	private void gotoBrand(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("brand.jsp");
        dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
