package controller.board;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

import gdu.mskim.MskimRequestMapping;

@WebServlet(urlPatterns = {"/notice/*"}, initParams = {@WebInitParam(name="view",value = "/dist/pages/board/")})
public class NoticeController extends MskimRequestMapping {

}
