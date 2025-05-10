package controller.learning_support;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import gdu.mskim.MskimRequestMapping;
import gdu.mskim.RequestMapping;
import model.dao.learning_support.CourseDao;

@WebServlet(urlPatterns = {"/learning_support/*"}, 
			initParams = {@WebInitParam(name="view",value = "/dist/pages/learning_support/")}
)
public class CourseController extends MskimRequestMapping {
	
	@RequestMapping("colleges")
	public String select (HttpServletRequest request, HttpServletResponse response) {
		
		CourseDao courseDao = new CourseDao();
		
		List<String> colleges = courseDao.getCollege();
		
	    // Jackson 사용해서 JSON 변환
        ObjectMapper mapper = new ObjectMapper();
        String json;
        
		try {
			json = mapper.writeValueAsString(colleges);
			request.setAttribute("json", json);
			
		} catch (IOException e) {
			e.printStackTrace();

		}
		
		return "/ajax_colleges";
	}
	
}
