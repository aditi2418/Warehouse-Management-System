package controller;
import dto.UserDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticator;

public class LoginCheckerServlet extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
{
    response.sendRedirect("index.html");
}
public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
{
    String username=(String)request.getParameter("username");
        String password=(String)request.getParameter("password");
        UserDTO user= new UserDTO();
        user.setUsername(username);
        user.setPassword(password);
        
        LoginAuthenticator la=new LoginAuthenticator();
        boolean login=la.isLogin(user);
        if(login)
        {
            HttpSession session=request.getSession(true);
            session.setAttribute("username", username);
             session.setAttribute("password", password);
             response.sendRedirect("home.jsp");
             
        }
        else
        {
            response.sendRedirect("index.html");
        }
}
}