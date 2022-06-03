package controller;
import db.DBConnector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddPartyServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        response.sendRedirect("index.html");
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        PrintWriter out = response.getWriter();
        String Party=request.getParameter("party");
        Statement st=null;
        DBConnector db=new DBConnector();
        st=db.getStatement();
        Connection con=db.getConnection();
        try
        {
            String query="insert into allparty Values('"+Party+"','0')";
            int x=st.executeUpdate(query);
           
                out.println("updated");
                if(x>0)
                {   out.println("updated");
                    response.sendRedirect("party-data.jsp");
                }
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    }
}