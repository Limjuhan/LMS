package controller.board;

import java.util.Date;
import java.util.List;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Post;
import gdu.mskim.MskimRequestMapping;
import gdu.mskim.RequestMapping;
import model.dao.board.PostDao;

@WebServlet(urlPatterns = {"/post/*"}, initParams = {@WebInitParam(name = "view",value = "/dist/pages/board/")})
public class PostController extends MskimRequestMapping{
	private PostDao dao = new PostDao();
	
	@RequestMapping("getPost")
	public String getPost(HttpServletRequest request,HttpServletResponse response) {
		int pageNum = 1;
		try {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}catch (NumberFormatException e) {
		
		}
		String column = request.getParameter("column");
		String find = request.getParameter("find");
		if(column == null || column.trim().equals("") || find == null || find.trim().equals("")) {
			column = null;
			find = null;
		}
		int limit = 10;
		int boardcount =dao.boardCount(column,find);
		List<Post> list = dao.list(pageNum,limit,column,find);
		int maxpage = (int)((double)boardcount/limit+0.95);
		int startpage=((int)(pageNum/10.0 + 0.9) - 1) * 10 + 1;
		int endpage = startpage + 9;
		if(endpage > maxpage) {
			endpage = maxpage;
		}
		request.setAttribute("boardcount", boardcount);
		request.setAttribute("pageNum",pageNum);
		request.setAttribute("list",list);
		request.setAttribute("startpage",startpage);		
		request.setAttribute("endpage",endpage);
		request.setAttribute("maxpage",maxpage);
		request.setAttribute("today",new Date());
	    request.setAttribute("column",column);
	    request.setAttribute("find",find);
		return "post/getPost";
	}
	
}
