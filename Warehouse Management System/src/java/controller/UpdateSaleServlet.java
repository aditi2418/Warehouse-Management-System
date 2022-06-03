
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

@WebServlet("/UpdateSaleServlet")
public class UpdateSaleServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        response.sendRedirect("index.html");
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        PrintWriter out = response.getWriter();
        int saleid = Integer.parseInt(request.getParameter("saleid"));
        float newquantity=Float.parseFloat(request.getParameter("newquantity"));
        String partyname = request.getParameter("partyname");
        float temp = 0;
        
        float temp1 = 0;
        float oldquantity = 0;
        String temp3 = "";
        String temp4 = "";
        float temp5 = 0.0f;
        String temp6 = "";
        float temp7 = 0.0f;
        float temp8 = 0.0f;
        float temp9 = 0.0f;
        
        Statement st=null;
        PreparedStatement ps=null;
        Connection con=null;
        DBConnector db=new DBConnector();
        
        
        
        try
        {
            String demoquery = "select * from transactions where transaction_id='"+saleid+"'";
            
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
            
            demoquery = "update transactions set Party_Name='"+partyname+"', Quantity='"+newquantity+"' where transaction_id='"+saleid+"'";
            int t = st.executeUpdate(demoquery);
            
            if(t>0)
            {
                demoquery = "update sale set party_name='"+partyname+"', quantity='"+newquantity+"' where sale_id='"+saleid+"'";
                t = st.executeUpdate(demoquery);
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
                
                if(oldquantity>newquantity)
                {
                    temp9 = oldquantity-newquantity;
                    temp7 = temp7 + temp9;
                }
                else
                {
                    temp9 = newquantity-oldquantity;
                    temp7 = temp7 - temp9;
                }
                
            }
            
            
            String query="update "+temp4+" set Quantity='"+temp7+"' where Material_Name='"+temp6+"' ";
            con=db.getConnection();
            st=con.createStatement();
            int x=st.executeUpdate(query);
            
            query ="select Stored_Quantity from items where Material_Name='"+temp6+"' ";
            ResultSet rsi = st.executeQuery(query);
            while(rsi.next())
            {
                temp8 = rsi.getFloat(1);
            }
            System.out.println(temp8);
                if(oldquantity>newquantity)
                    {
                        temp9 = oldquantity-newquantity;
                        temp8 = temp8 + temp9;
                    }
                else
                    {
                        temp9 = newquantity-oldquantity;
                        temp8 = temp8 - temp9;
                    }
                
            rsi.close();
            
            query ="update items set Stored_Quantity='"+temp8+"' where Material_Name='"+temp6+"'";
            x = st.executeUpdate(query);
            if(x>0)
            {
               response.sendRedirect("sale-data.jsp");
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
