package model.dao.preofessor;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import config.MyBatisConnection;

/*
 * ProfessorMapper.xml 파일을 이용하기
 * Projessor.java 생성
 
1. 교수테이블에 등록된 레코드의 건수를 출력하기.
2. 교수테이블에 등록된 모든 정보를 출력하기
3. 교수중 101번 학과의 교수 정보를 출력하기
4. 교수중 성이 김씨인 시간강사 정보를 출력하기 
*/
public class Test2 {
	
	public static void main(String[] args) {
		SqlSession session = MyBatisConnection.getConnection();
		int num = session.selectOne("professor.selectCount");
		System.out.println(num);
		
	}
}


























