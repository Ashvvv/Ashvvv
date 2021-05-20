/**
 * 
 */
package sys.DaoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import sys.Dao.DBHelperDao;
import sys.Dao.messageDao;
import sys.Entity.message;

/**
 * @author student
 *
 */
public class messageDaoImpl extends DBHelperDao implements messageDao {
	Connection conn = null;
	PreparedStatement psta = null;
	ResultSet rs = null;
	
	/***
	 *   增加留言信息
	 */
	public int AddMessage(message message) {
		// TODO Auto-generated method stub
		int num = 0;
		try {
			conn = super.GetConnection();
			String sql = "insert into message(title, username, contents, ip) values(?, ?, ?,?)";
			psta = conn.prepareStatement(sql);
			psta.setString(1, message.getTitle());
			psta.setString(2, message.getUsername());
			psta.setString(3, message.getContents());
			psta.setString(4, message.getIp());
			num = psta.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(num > 0)
			{
				System.out.println("数据插入成功！");				
			}else{
				System.out.println("插入数据失败!");
			}
		}
		
		return num;
	}

	/***
	 * 查询所有的留言信息
	 */
	public List GetMessageAll() {
		// TODO Auto-generated method stub
		List list = new ArrayList();
		try {
			conn = super.GetConnection();
			String sql = "select * from message order by createtime desc";
			psta = conn.prepareStatement(sql);
			rs = psta.executeQuery();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				while(rs.next())
				{
					message mess = new message();
					mess.setId(rs.getInt("id"));
					mess.setTitle(rs.getString("title"));
					mess.setUsername(rs.getString("username"));
					mess.setContents(rs.getString("contents"));
					mess.setIp(rs.getString("ip"));
					mess.setCreatetime(rs.getDate("createtime"));
					list.add(mess);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return list;
	}

}
