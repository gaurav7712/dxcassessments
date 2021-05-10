package com.mysrv;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myproj.dao.PlayerDao;
import myproj.model.Player;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public updateServlet() 
    {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		Player player=(Player)request.getSession().getAttribute("player");
		String name=player.getName();
		//String Name= request.getParameter("Name");
		String role= request.getParameter("role");
		String style= request.getParameter("style");
		String team= request.getParameter("team");

		Player updateplayer =new Player(name, role, style, team);
		PlayerDao dao=new PlayerDao();
		response.getWriter().print(dao.updatePlayer(updateplayer));
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
