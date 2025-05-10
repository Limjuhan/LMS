package controller.mypage;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mindrot.jbcrypt.BCrypt;

import gdu.mskim.MskimRequestMapping;
import gdu.mskim.RequestMapping;
//http://localhost:8080/LMSProject1/dist/pages/mypage/registerUserChk
@WebServlet(urlPatterns = {"/mypage/*"},
initParams = {@WebInitParam(name="view", value="/dist/pages/")}
)
public class MypageController  extends MskimRequestMapping{
	
	@RequestMapping("registerUserChk")
	public String  registerUser(HttpServletRequest request , HttpServletResponse response) {
		String name  = request.getParameter("name");
		String birth = request.getParameter("birth");
		String pass = request.getParameter("password");
		String hashpw = BCrypt.hashpw(pass, BCrypt.gensalt());//hashPassword : 암호화 (복호화는불가능)
		System.out.println("pass: "+pass);
		System.out.println("hashpass: "+hashpw);
		System.out.println("birthday"+birth);
		System.out.println("name="+ name);
		return "mypage/doLogin";
	}
}
