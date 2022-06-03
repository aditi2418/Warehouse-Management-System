
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

@WebServlet("/DeleteImportServlet")
public class DeleteImportServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        
        PrintWriter out = response.getWriter();
        int importid = Integer.parseInt(request.getParameter("importid"));
        float quantity=Float.parseFloat(request.getParameter("quantity"));
        String material = request.getParameter("material");
        String warehouse = request.getParameter("warehouse");
        
        float temp = 0;
        
        float temp1 = 0;
        float oldquantity = 0;
        String temp3 = "";
        String temp4 = "";
        float temp5 = 0.0f;
        String temp6 = "";
        float temp7 = 0.0f;
        float temp8 = 0.0f;
        
        Statement st=null;
        PreparedStatement ps=null;
        Connection con=null;
        DBConnector db=new DBConnector();
        
        
        
        try
        {
            String demoquery = "select * from transactions where transaction_id='"+importid+"'";
            
            con=db.getConnection();
            st=con.createStatement();
            
            ResultSet rs = st.executeQuery(demoquery);
            
            while(rs.next())
            {
                
                temp3 = rs.getString("Party_Name");
                oldquantity = rs.getFloat("Quantity");
                temp4 = rs.getString("Warehouse");
                temp6 = rs.getString("Material_Name");
                
                System.out.println(temp3+oldquantity+temp4+temp6);
                
            }
            
            rs.close();
            System.out.println("Hihi");
            demoquery = "delete from transactions where transaction_id='"+importid+"'";
            System.out.println("Hihi");
            int t = st.executeUpdate(demoquery);
            System.out.println("Hihi");
            if(t>0)
            {  
                System.out.println("Hihi");
                demoquery = "delete from import where import_id='"+importid+"'";
                System.out.println("Hihi");
                t = st.executeUpdate(demoquery);
                System.out.println("Hihi");
                if(t>0)
                {
                    demoquery = "select Quantity from "+temp4+" where Material_Name='"+temp6+"'";
                    ResultSet rs2 = st.executeQuery(demoquery);
                    while(rs2.next())
                            {
                                temp7 = rs2.getFloat(1);
                            }
                    rs2.close();
                }
                
                temp7 = temp7 - quantity;
                
            }
            
            
            String query="update "+temp4+" set Quantity='"+temp7+"' where Material_Name='"+temp6+"' ";
            con=db.getConnection();
            st=con.createStatement();
            int x=st.executeUpdate(query);
            
            if(x>0)
            {
               demoquery = "select Stored_Quantity from items where Material_Name='"+temp6+"'";
                    ResultSet rs3 = st.executeQuery(demoquery);
                    while(rs3.next())
                            {
                                temp8 = rs3.getFloat(1);
                            }
                    rs3.close();
                    
                    temp8 = temp8 - quantity;
                    
                    query="update items set Stored_Quantity='"+temp8+"' where Material_Name='"+temp6+"' ";
                    con=db.getConnection();
                    st=con.createStatement();
                    x=st.executeUpdate(query);
                    
                    if(x>0)
                    {
                        response.sendRedirect("import-data.jsp");
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
