package model.dao.board;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import config.MyBatisConnection;
import domain.Post;

public class PostDao {
	private final static SqlSessionFactory sqlMap;
	static {
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream("mapper/mybatis-config.xml");
		} catch (IOException e) {
			e.printStackTrace();
		}
		sqlMap = new SqlSessionFactoryBuilder().build(input);
	}
	public static void main(String[] args) {
		SqlSession session = MyBatisConnection.getConnection();
		List<Post> list = session.selectList("post.selectname","PO001");
		for(Post p : list) {
			System.out.println(p);
		}
	}
	public int boardCount(String column, String find) {
		SqlSession session = MyBatisConnection.getConnection();
		
		return 0;
	}
}
