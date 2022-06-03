
package controller;

import db.DBConnector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TransferDeleteServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        
        PrintWriter out = response.getWriter();
        int transferid = Integer.parseInt(request.getParameter("transferid"));
        String quantity=request.getParameter("quantity");
        String material = request.getParameter("material");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        
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
        
        String query1 = "";
                
        //Adding ArrayLists
        ArrayList<String> listmaterial = new ArrayList<>();
        ArrayList<String> listquantity = new ArrayList<>();
        ArrayList<Float> stored = new ArrayList<>();
        ArrayList<Float> storeditem = new ArrayList<>();
        //Putting values from the strings to the arraylist
            StringTokenizer s=new StringTokenizer(material,",");
            while(s.hasMoreTokens())
            {
            listmaterial.add(s.nextToken());
            }
            
            int count = 0;
            s=new StringTokenizer(quantity,",");
            System.out.println(quantity+"Hiiii");
            while(s.hasMoreTokens())
            {
            listquantity.add(s.nextToken());
            count++;
            }
            System.out.println(count);
            
            int p = 0;
            for(String a : listquantity)
            {
                out.println(a);
                p++;
            }
            
            out.println("Hihi");
        
        
        try
        {
            String demoquery = "select * from transactions where transaction_id='"+transferid+"'";
            out.println("Hihi");
            con=db.getConnection();
            st=con.createStatement();
            
            System.out.println("Hihi");
            demoquery = "delete from transactions where transaction_id='"+transferid+"'";
            System.out.println("Hihi");
            out.println("Hihi");
            out.println("Hihi");
            
            System.out.println(demoquery);
            int t = st.executeUpdate(demoquery);
            out.println("Hihi");
            if(t>0)
            {  
                System.out.println("Hihi");
                demoquery = "delete from transfer where transfer_id='"+transferid+"'";
                System.out.println("Hihi");
                t = st.executeUpdate(demoquery);
                System.out.println("Hihi");
                if(t>0)
                {
                    
                    out.print(material);
                    
                    demoquery = "select * from "+from+" where Material_Name IN ("+material+")";
                    ResultSet rs2 = st.executeQuery(demoquery);
                    while(rs2.next())
                            {
                                stored.add(rs2.getFloat("Quantity"));
                            }
                    float temporary=0;
                            for(int i = 0; i<stored.size(); i++)
                            {
                                temporary = stored.get(i)+ Float.parseFloat(listquantity.get(i));
                                stored.set(i,temporary);
                                out.println(stored.get(i));
                            }
                    rs2.close();
                }
                String kased = "";
                
                for(int i = 0; i<listmaterial.size(); i++)
                {
                    kased += "when Material_Name="+listmaterial.get(i)+" then '"+stored.get(i)+"' ";
                }
                query1="update "+from+" set Quantity=case "+kased+" end where Material_Name IN ("+material+")";
                
                
            }
            
            
            //String query="update "+temp4+" set Quantity='"+temp7+"' where Material_Name='"+temp6+"' ";
            con=db.getConnection();
            st=con.createStatement();
            int x=st.executeUpdate(query1);
            out.print("Heyo @!!!");
            if(x>0)
            {
                
                demoquery = "select * from "+to+" where Material_Name IN ("+material+")";
                    ResultSet rs3 = st.executeQuery(demoquery);
                    while(rs3.next())
                            {
                                storeditem.add(rs3.getFloat("Quantity"));
                            }
                    float temporary=0;
                            for(int i = 0; i<storeditem.size(); i++)
                            {
                                temporary = storeditem.get(i)- Float.parseFloat(listquantity.get(i));
                                storeditem.set(i,temporary);
                                out.println(storeditem.get(i));
                            }
                    rs3.close();
                
                    String kased = "";
                
                    for(int i = 0; i<listmaterial.size(); i++)
                    {
                        kased += "when Material_Name="+listmaterial.get(i)+" then '"+storeditem.get(i)+"' ";
                    }
                    query1="update "+to+" set Quantity=case "+kased+" end where Material_Name IN ("+material+")";
                
               
                    
                    con=db.getConnection();
                    st=con.createStatement();
                    x=st.executeUpdate(query1);
                    
                    if(x>0)
                    {
                        response.sendRedirect("transfer-data.jsp");
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
