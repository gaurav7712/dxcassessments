package myproj.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConn 
{
	public static Connection dbConnect()
	{
		try
		{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con1=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dxctest","pass");
			return con1;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			return null;
		}
	}
}