/**
 * 
 */
package sys.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * @author student
 *
 */
public class DBHelperDao {
	private static final String DIRVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String URL = "jdbc:sqlserver://localhost:1433; DataBaseName=messageboard";
	private static final String USER = "sa";
	private static final String PASS = "12345";
	
	public static Connection GetConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName(DIRVER);
		Connection con = DriverManager.getConnection(URL, USER, PASS);
		return con;		
	}
	
	public void CloseAll(Connection conn, Statement sta, ResultSet rs)
	{
		if(rs != null)
		{
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(sta != null)
		{
			try {
				sta.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(conn != null)
		{
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		DBHelperDao dao = new DBHelperDao();
		System.out.println(dao.GetConnection());
	}
}
