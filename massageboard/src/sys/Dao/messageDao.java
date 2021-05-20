/**
 * 
 */
package sys.Dao;

import java.util.List;

import sys.Entity.message;

/**
 * @author student
 *
 */
public interface messageDao {
	public List GetMessageAll();
	
	public int AddMessage(message message);
}
