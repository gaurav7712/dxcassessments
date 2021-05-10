package myproj.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import myproj.dbutil.DbConn;
import myproj.model.Player;
public class PlayerDao 
{
	public String savePlayer(Player player)
	{
		try {
			String sql="insert into playerdemo1 values(?,?,?,?)";

			Connection con= DbConn.dbConnect();
			PreparedStatement stat=con.prepareStatement(sql);

			stat.setString(1, player.getName());
			stat.setString(2, player.getrole());
			stat.setString(3, player.getstyle());
			stat.setString(4, player.getteam());
			
			int res= stat.executeUpdate();

			if(res>0)
				return "recs inserted";
		}
		catch(Exception e)
		{

			e.printStackTrace();
		}
		return "cannot insert recs";
	}
	
	
	public Player getPlayerByName(String Name)
	{
		try
		{
			Connection con= DbConn.dbConnect();

			String sql="select * from playerdemo1 where Name=?";
			PreparedStatement stat=con.prepareStatement(sql);

			stat.setString(1, Name);
			ResultSet rs= stat.executeQuery();

			rs.next();

			String Name1 =rs.getString("Name");
			String role =rs.getString("role");
			String style= rs.getString("style");
			String team =rs.getString("team");

			Player player=new Player(Name1, role, style, team);

			return player;

		}
		catch (Exception e) {

			e.printStackTrace();
		}
		return null;
	}
	
	
	public ArrayList<Player> getPlayers()
	{
		try
		{
			Connection con= DbConn.dbConnect();

			String sql="select * from playerdemo1";
			PreparedStatement stat=con.prepareStatement(sql);


			ResultSet rs= stat.executeQuery();

			ArrayList<Player> players=new ArrayList<>();

			while(rs.next())
			{

				String Name= rs.getString("Name");
				String role= rs.getString("role");
				String style=rs.getString("style");
				String team= rs.getString("team");
	
				Player player=new Player(Name, role, style, team);

				players.add(player);
			}

			return players;

		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return null;
	}
	public String deletePlayerByName(String Name)
	{
		try 
		{
			Connection con= DbConn.dbConnect();

			String sql="delete from playerdemo1 where Name=?";
			PreparedStatement stat=con.prepareStatement(sql);

			stat.setString(1, Name);
			int rs= stat.executeUpdate();

			if(rs>0)
				return "recs for id "+Name+" deleted";
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public String updatePlayer(Player player)
	{

	try {

	Player playerOld=getPlayerByName(player.getName());

	Connection con= DbConn.dbConnect();

	String sql="update playerdemo1 set Name=?, role=?,style=? ,team=?   where Name=?";
	PreparedStatement stat=con.prepareStatement(sql);


	if(player.getName()==null)
	player.setName(playerOld.getName());

	if(player.getrole()==null)
	player.setrole(playerOld.getrole());

	if(player.getstyle()==null)
	player.setstyle(playerOld.getstyle());

	if(player.getteam()==null)
	player.setteam(playerOld.getteam());


	stat.setString(1,player.getName() );
	stat.setString(2, player.getrole());
	stat.setString(3, player.getstyle());
	stat.setString(4, player.getteam());
	stat.setString(5, player.getName());


	int rs= stat.executeUpdate();



	if(rs>0) {

	System.out.println(playerOld);

	System.out.println(player);

	return "recs updated for id "+player.getName();
	}
	}
	catch (Exception e) {

	e.printStackTrace();
	}
	return null;
	}
}