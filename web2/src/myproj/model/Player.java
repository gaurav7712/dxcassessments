package myproj.model;

public class Player
{
	String Name;
	String role;
	String style;
	String team;

	public String getName() 
	{
		return Name;
	}
	public void setName(String Name) 
	{
		this.Name=Name;
	}
	public String getrole() {
		return role;
	}
	public void setrole(String role) {
		this.role=role;
	}
	public String getstyle() {
		return style;
	}
	public void setstyle(String style) {
		this.style=style;
	}
	public String getteam() {
		return team;
	}
	public void setteam(String team) {
		this.team=team;
	}
	public Player(String Name, String role, String style,String team) 
	{
		super();
		this.Name = Name;
		this.role = role;
		this.style = style;
		this.team = team;
	}
	public Player(){}
	
	@Override
	public String toString()
	{
		return "PLayer [Name=" + Name + ", Role=" +role + ", Style=" + style+ ",Team=" + team + "]";
	}
}