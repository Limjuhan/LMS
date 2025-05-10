package model.dao.learning_support;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import config.MyBatisConnection;


public class CourseDao {

	public List<String> getCollege() {
		
		SqlSession session = MyBatisConnection.getConnection(); 
		List<String> result = null;
		
		try {
			 result = session.selectList("course.selectColleges");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			MyBatisConnection.close(session);
		}
		
		return result;
	}

}
