package controller;
import db.DBConnector;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddWarehouseServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        response.sendRedirect("index.html");
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        String Warehouse=request.getParameter("warehouse");
        Statement st=null;
        DBConnector db=new DBConnector();
        st=db.getStatement();
        Connection con=db.getConnection();
        try
        {
            String query="create table "+Warehouse+"(Material_Name varchar(20),Quantity float(9,4))";
            int x=st.executeUpdate(query);
           
                System.out.println("updated");
                PreparedStatement ps;
                String query1="insert into warehouse values (?,?)";
                ps = con.prepareStatement(query1);
                ps.setInt(1,0);
                ps.setString(2,Warehouse);
                int y=ps.executeUpdate();
                if(y>0)
                {
                    String query2="select * from items";
                    ResultSet rs=st.executeQuery(query2);
                    while(rs.next())
                    {
                        System.out.println("1");
                        String query3="insert into "+Warehouse+" values (?,?)";
                        ps=con.prepareStatement(query3);
                        ps.setString(1, rs.getString("Material_Name"));
                        ps.setFloat(2,0);
                        int z=ps.executeUpdate();
                    }
                    response.sendRedirect("warehouse.jsp");
                }
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
    }
}