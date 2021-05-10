package com.mysrv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myproj.dao.PlayerDao;
import myproj.model.Player;


@WebServlet("/MyFirstServlet")
public class MyFirstServlet extends HttpServlet 
{  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Name=request.getParameter("Name");
		String role=request.getParameter("role");
		String style=request.getParameter("style");
		String team= request.getParameter("team");

		Player player=new Player(Name,role,style,team);

		PlayerDao dao=new PlayerDao();

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		out.print(dao.savePlayer(player));
	}
}