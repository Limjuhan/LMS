package config;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConnection { 
	private MyBatisConnection() {}
	private  static SqlSessionFactory sqlMap;
	//한 번만 초기화되는 전역 SqlSessionFactory를 만들기 위한 구조
	//MyBatis 설정 파일을 읽고 파싱하는 작업을 중앙집중화해서 중복 제거 및 관리 용이성 확보
	static{
		String resource = "mapper/mybatis-config.xml";
		InputStream input = null;
		try {
			
			input = Resources.getResourceAsStream(resource);		
		}
		catch (IOException e) {
			e.printStackTrace();
		}
		sqlMap = new SqlSessionFactoryBuilder().build(input);
	}
	
	
	public static SqlSession getConnection() {
		return sqlMap.openSession();
	}
	
	public static void close(SqlSession session) {
		session.commit();
		session.close();
	}

}
