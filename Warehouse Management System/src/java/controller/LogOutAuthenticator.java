package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogOutAuthenticator extends HttpServlet
{
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
    {
        HttpSession session=request.getSession();
        session.invalidate();
        response.sendRedirect("index.html");
    }
}