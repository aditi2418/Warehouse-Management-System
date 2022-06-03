
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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteMaterialServlet")
public class DeleteMaterialServlet extends HttpServlet
{
    
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        PrintWriter out = response.getWriter();
        String material=request.getParameter("material");
        System.out.println(material);
        float quantity = Float.parseFloat(request.getParameter("quantity"));
        System.out.println(quantity);
        String wname = request.getParameter("wname");
        System.out.println(wname);
        out.println(material);
        
        float temp = 0;
        
        Statement st=null;
        PreparedStatement ps=null;
        Connection con=null;
        DBConnector db=new DBConnector();
        
        
        
        try
        {
            
            String demoquery = "select * from items where Material_Name='"+material+"'";
            con=db.getConnection();
            st=con.createStatement();
            ResultSet rs = st.executeQuery(demoquery);
            while(rs.next())
            {
                temp = rs.getFloat("Stored_Quantity");
            }
            
            temp = temp - quantity;
                    
            String query="update "+wname+" set Quantity='0' where Material_Name='"+material+"' ";
            con=db.getConnection();
            st=con.createStatement();
            int x=st.executeUpdate(query);
            
            if(x>0)
            {
               query = "update items set Stored_Quantity='"+temp+"' where Material_Name='"+material+"'";
               int y = st.executeUpdate(query);
               if(y>0)
               {
                    System.out.println("Quantity Updated Successfully!");
                    response.sendRedirect("warehouse-deatils.jsp?wname="+wname+"");
               }
               else
               {
                   System.out.println("Quantity Not Updated!");
                   response.sendRedirect("home.jsp");
               }
            }   
            else
            {
                response.sendRedirect("home.jsp");
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
           
    }
}
