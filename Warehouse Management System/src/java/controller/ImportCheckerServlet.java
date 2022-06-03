
package controller;

import db.DBConnector;
import dto.UserDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class ImportCheckerServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        response.sendRedirect("index.html");
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        PrintWriter out = response.getWriter();
        String date=request.getParameter("date");
        String Warehouse=request.getParameter("warehouse");
        
        String PartyName=request.getParameter("party");
        String MaterialName=request.getParameter("material");
        float Quantity=Float.parseFloat(request.getParameter("quantity"));
        String Payment=request.getParameter("payment");
        String ReferPoint=request.getParameter("referpoint");
        String Rate=request.getParameter("rate");
        String Sold_By=request.getParameter("soldby");
        String TermsOfDelivery=request.getParameter("termsofdelivery");
        String invoiceno = request.getParameter("invoiceno");
        String id = PartyName+"-"+invoiceno;
        
        UserDTO user=new UserDTO();
        user.setId(id);
        user.setMode("import purchase");
        user.setPartyname(PartyName);
        user.setWarehouse(Warehouse);
        System.out.println(id+" "+PartyName+" "+Warehouse);
        HttpSession session=request.getSession();
        session.setAttribute("obj", user);
        
        String[] ms = request.getParameterValues("m");
        String[] qs = request.getParameterValues("q");
        String[] rss = request.getParameterValues("r");
        ArrayList<String> q = new ArrayList<>();
        ArrayList<String> m = new ArrayList<>();
        ArrayList<String> r = new ArrayList<>();
        
        
        
        
        if(ms!=null){
            for(String a : ms)
            {
                System.out.println(a);
                m.add(a);
            }
            for(String a : qs)
            {
                System.out.println(a);
                q.add(a);
            }
            for(String a : rss)
            {
                System.out.println(a);
                r.add(a);
            }
        }
        
        String newm = "'"+MaterialName+"'";
        for(String a : m)
        {
            newm = newm+","+"'"+a+"'";
        }
        String newq = "'"+Quantity+"'";
        String tempq = ""+Quantity+"";
        for(String a : q)
        {
            newq = newq+","+"'"+a+"'";
            tempq = tempq+","+a;
        }
        System.out.println(newq);
        String newr = "'"+Rate+"'";
        for(String a : r)
        {
            newr = newr+","+"'"+a+"'";
        }
        System.out.println(newr);
        float temp = 0.0f;
        int max=0;
        float Stored=0;
        Statement st=null;
        PreparedStatement ps=null;
        Connection con=null;
        DBConnector db=new DBConnector();
        
        //Buiding Query Or Say MultiQuery
        ArrayList<Float> stored = new ArrayList<>();
        ArrayList<Float> itemstored = new ArrayList<>();
        ArrayList<Float> subs=new ArrayList<>();
        ArrayList<Float> iubs=new ArrayList<>();
        try
        {
            String query1="select * from "+Warehouse+" where Material_Name IN ("+newm+")";
            st=db.getStatement();
            ResultSet rs=st.executeQuery(query1);
            System.out.println(newm);
            
            while(rs.next())
            {
                stored.add(rs.getFloat("Quantity"));
            }
            for(Float a : stored)
            {
                System.out.println(a);
            }
            
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        
        //Calling Stored VS Quantity Checker Method
       
        Float quant=0.0f;
        try
        {
        String queryn="select Quantity from "+Warehouse+" where Material_Name ='"+MaterialName+"'";
        ResultSet rs4=st.executeQuery(queryn);
        while(rs4.next())
        {
            quant=rs4.getFloat("Quantity");
        }
        quant=quant+Quantity;
        for(int j=0; j<m.size(); j++)
        {
            subs.add(stored.get(j+1)+(Float.parseFloat(q.get(j))));
        }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        
                     String kase = "when Material_Name='"+MaterialName+"' then '"+quant+"' ";
                     String kased = "";
                     for(int i = 0; i<m.size(); i++)
                     {
                         kased += "when Material_Name='"+m.get(i)+"' then '"+subs.get(i)+"' ";
                     }
                     kase = kase+kased;
                     
                     System.out.println(kase);
                        
                     
                    String query1="update "+Warehouse+" set Quantity=case "+kase+" end where Material_Name IN ("+newm+")";
                    
                    System.out.println(query1);
        
        
       
        try
        {
            String query="insert into import Values(?,?,?,?,?,?,?,?,?,?,?)";
            con=db.getConnection();
            ps=con.prepareStatement(query);
            ps.setString(1,PartyName);
            ps.setString(2,newm);
            ps.setString(3,Payment);
            ps.setString(4,ReferPoint);
            ps.setString(5,newr);
            ps.setString(6,Sold_By);
            ps.setString(7,TermsOfDelivery);
            ps.setInt(8,0);
            ps.setString(9,Warehouse);
            ps.setString(10,tempq);
            ps.setString(11,date);
           
            int x=ps.executeUpdate();
            if(x>0)
            {
            
                Stored=Stored-Quantity;
                try
                {
                    String newquery="select max(import_id) from import";
                    ResultSet rs=st.executeQuery(newquery);
                    while(rs.next())
                    {
                        max=rs.getInt(1);
                    }
                     
                    System.out.println(query1);
                    
                    
                    ps=con.prepareStatement(query1);
                    int y=ps.executeUpdate();
                    
                    if(y>0)
                    {
                        String query2="insert into transactions values(?,?,?,?,?,?,?,?,?)";
                        ps=con.prepareStatement(query2);
                        ps.setString(1,date);
                        ps.setString(2,tempq);
                        ps.setString(3,newm);
                        ps.setString(4,PartyName);
                        ps.setString(5,Warehouse);
                        ps.setString(6,"import");
                        ps.setString(7,Sold_By);
                        ps.setInt(8,max);
                        ps.setString(9, id);
                        int z=ps.executeUpdate();
                        if(z>0)
                        {
                            String query3 = "select Stored_Quantity from items where Material_Name IN ("+newm+")";
                            ResultSet rs3 = st.executeQuery(query3);
                            while(rs3.next())
                            {
                             itemstored.add(rs3.getFloat("Stored_Quantity"));
                            }
                            
                            Float quant1=0.0f;
        try
        {
        String queryn1="select Stored_Quantity from items where Material_Name ='"+MaterialName+"'";
        ResultSet rs1=st.executeQuery(queryn1);
        while(rs1.next())
        {
            quant1=rs1.getFloat("Stored_Quantity");
        }
        quant1=quant1+Quantity;
        
        for(int j=0; j<m.size(); j++)
        {
            iubs.add(itemstored.get(j+1)+(Float.parseFloat(q.get(j))));
        }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        out.print("hello");
       
                            String kase1 = "when Material_Name='"+MaterialName+"' then '"+quant1+"' ";
                     String kased1 = "";
                     for(int i = 0; i<m.size(); i++)
                     {
                         kased1 += "when Material_Name='"+m.get(i)+"' then '"+iubs.get(i)+"' ";
                     }
                     kase1 = kase1+kased1;
                     
                     System.out.println(kase1);
                        
                     
                    String query8="update items set Stored_Quantity = case "+kase1+" end where Material_Name IN ("+newm+")";
                    
                    System.out.println(query8);
                    ps=con.prepareStatement(query8);
                    int n =ps.executeUpdate();
                            //temp = temp - Quantity;
                            
                           // String query4 = "update items set Stored_Quantity='"+temp+"' where Material_Name='"+MaterialName+"'";
                           // z = st.executeUpdate(query4);
                            if(n>0)
                            {
                                System.out.println("done");
                                response.sendRedirect("EmailSendingServlet");
                            }
                        }
                    }
                }
                catch(SQLException e)
                {
                    System.out.println(e);
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
