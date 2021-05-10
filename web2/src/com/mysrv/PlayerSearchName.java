package com.mysrv;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myproj.dao.PlayerDao;
import myproj.model.Player;

/**
 * Servlet implementation class PlayerSearchName
 */
@WebServlet("/PlayerSearchName")
public class PlayerSearchName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlayerSearchName() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	String Name=request.getParameter("Name");

    	PlayerDao dao=new PlayerDao();
    	Player player= dao.getPlayerByName(Name);

//    	PrintWriter out=response.getWriter();
    	response.setContentType("text/html");


    	//redirect
    	//session

    	HttpSession session= request.getSession();
    	session.setAttribute("player",player);

    	RequestDispatcher rd= request.getRequestDispatcher("DisplayPlayer.jsp");
    	rd.forward(request, response);

    	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
