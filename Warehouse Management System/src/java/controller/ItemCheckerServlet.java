
package controller;

import db.DBConnector;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ItemCheckerServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        response.sendRedirect("index.html");
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        String MaterialName=request.getParameter("material");
        //float Quantity=Float.parseFloat(request.getParameter("quantity"));
        String Colour=request.getParameter("color");
         float q=0.0f;
        
        Statement st=null;
        PreparedStatement ps=null;
        Connection con=null;
        DBConnector db=new DBConnector();
        st=db.getStatement();
        try
        {
            String query="insert into items Values(?,?,?)";
            con=db.getConnection();
            ps=con.prepareStatement(query);
            ps.setString(1,MaterialName);
            ps.setFloat(2,q);
            ps.setString(3,Colour);
            int x=ps.executeUpdate();
           if(x>0)
           {
                String query1="select * from warehouse";
                ResultSet rs=st.executeQuery(query1);
                while(rs.next())
                {
                    String ware=rs.getString("warehouse_name");
                    String query2="insert into "+ware+" values (?,?)";
                    ps=con.prepareStatement(query2);
                    ps.setString(1,MaterialName);
                    ps.setInt(2,0);
                    int y=ps.executeUpdate();
                    if(y>0)
                    {
                        System.out.println(ware);
                    }
                }
                response.sendRedirect("item-data.jsp");
           }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    }
}
