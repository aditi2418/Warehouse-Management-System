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


public class NewEditServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        response.sendRedirect("index.html");
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        PrintWriter out = response.getWriter();
        //Getting The Values From newedit.jsp
        int saleid = Integer.parseInt(request.getParameter("saleid"));
        float newquantity=Float.parseFloat(request.getParameter("newquantity"));
        String updatedquantity = request.getParameter("newquantity");
        String partyname = request.getParameter("party_name");
        String materialname = request.getParameter("material");
        String soldby = request.getParameter("sold_by");
//        float rate = Integer.parseInt(request.getParameter("rate"));
//        String updatedrate = request.getParameter("rate");
        
        float temp = 0;
        
        float temp1 = 0;
        float oldquantity = 0.0f;
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
        
        boolean checkpoint = true;
        
        //Party Table Code Begins!!!!!
        if(checkpoint)
        {
            float tempquantity = newquantity;
        /////PartyQueue
        ArrayList<Integer> partyqueue = new ArrayList<>();
        ArrayList<String> partyqueuematerial = new ArrayList<>();
        ArrayList<String> partyqueuequantity = new ArrayList<>();
        ArrayList<ArrayList<String>> listofmateriallist = new ArrayList<>();
        
        
        String queue = "select * from party order by Party_ID desc";
        try
        {
            st = db.getStatement();
            ResultSet rsqueue = st.executeQuery(queue);
            while(rsqueue.next())
            {
                partyqueue.add(rsqueue.getInt("Party_ID"));
                partyqueuematerial.add(rsqueue.getString("Material"));
                partyqueuequantity.add(rsqueue.getString("Quantity"));
                
                
            }
        }
        catch(Exception e)
        {
            System.out.println("Party Queue Not Formed....");
        }
        
        for(String o : partyqueuematerial)
        {
            System.out.println(o);
        }
        
        
        for(String o : partyqueuequantity)
        {
            System.out.println(o);
        }
        
        
        
        
        
        int i = 0;
        for(String a : partyqueuematerial)
        {
            if(tempquantity!=0)
              {
            System.out.println(a);
            ArrayList<Float> tempstring = new ArrayList<>();
            boolean bool = false;
            int count = 0;
            
            StringTokenizer s=new StringTokenizer(a,",");
            b : while(s.hasMoreTokens())
            {
                if(s.nextToken().equals(materialname))
                {
                    bool = true;
                    break b;
                }
                System.out.println("Hihi");
                count++;
                
            }
            System.out.println(tempquantity+"Heyyyy");
            
            if(bool)
            {
                System.out.println(count+"Hiiiii");
            int countone = 0;
                System.out.println(partyqueuequantity.get(i));
            s = new StringTokenizer(partyqueuequantity.get(i),",");
            c : while(s.hasMoreTokens())
            {
                tempstring.add(Float.parseFloat(s.nextToken()));
                countone++;
            }
                //System.out.println(tempstring.get(i)+"Heyooo");
                
            
                if(tempstring.get(count)==tempquantity)
                {
                    System.out.println("if");
                    tempstring.set(count, 0.0f);
                    tempquantity = 0;
                    tempstring.clear();
                    break;
                }

                else if(tempstring.get(count)>tempquantity)
                {
                    System.out.println("else if");
                    tempstring.set(count, (tempstring.get(count)-tempquantity));
                    tempquantity = 0;
                    System.out.println(tempstring.get(count));
                }

                else
                {
                    System.out.println("else");
                    tempquantity = tempquantity - tempstring.get(count);
                    tempstring.set(count,0.0f);
                }
              
                 System.out.println(tempstring.size()+"Size");
                  String newString = ""+tempstring.get(0)+"";
                  System.out.println("New String 0 " + newString);
                  System.out.println(tempstring.get(0)+"Oye");
                  System.out.println("Size tempString"+tempstring.size());
               for(int z = 1; z < tempstring.size(); z++) 
              {
                  newString = newString+","+tempstring.get(z)+"";
              }     
                System.out.println("New String "+newString);
              partyqueuequantity.set(i,newString);
                
               
                System.out.println(partyqueuequantity.get(i)+"Hiiiiiiiiiiiiiiiiiiiiiiii");
            }
            tempstring.clear();
        }
            i++;
        }  
        
        for(int k = 0; k < partyqueue.size(); k++)
        {
            String updatequeue = "update party set Quantity='"+partyqueuequantity.get(k)+"' where Party_ID='"+partyqueue.get(k)+"'";
            try
            {
                st.executeUpdate(updatequeue);
                
            }
            catch(Exception e)
            {
                System.out.println("update not done....");
            }
        }
        
        
        }
    
        //Party Table Code Closed!!!!!
    
        
        
        
        
        

        
        
        
        //Strings for quantity, materialname and rate
        String quantitystring = "";
        String materialstring = "";
      //  String ratestring = "";
        
        //Others Variables For Getting Values
        String partystring =  "";
        String warehousestring = "";
        
        
        
        
        
        
        try
        {
            //Getting the old values 
            String demoquery = "select * from transactions where transaction_id='"+saleid+"'";
            
            con=db.getConnection();
            st=con.createStatement();
            
            ResultSet rs = st.executeQuery(demoquery);
            
            while(rs.next())
            {
                
                quantitystring = rs.getString("Quantity");
                materialstring = rs.getString("Material_Name");
                partystring = rs.getString("Party_Name");
                warehousestring = rs.getString("warehouse");
                
                System.out.println(quantitystring + materialstring + partystring + warehousestring);
                
            }
            
            rs.close();
            
            //Getting the old values (rate)
//            demoquery = "select * from sale where sale_id='"+saleid+"'";
//            
//            con=db.getConnection();
//            st=con.createStatement();
//            
//            ResultSet rsa = st.executeQuery(demoquery);
//            
//            while(rsa.next())
//            {
//                
//                ratestring = rsa.getString("rate");
//                
//                
//                System.out.println(quantitystring +" "+ materialstring +" "+ partystring +" "+ warehousestring +" "+ ratestring);
//                
//            }
//            
//            rsa.close();
            
            
            //ArrayList Declaration
            ArrayList<String> listmaterial = new ArrayList<>();
            ArrayList<String> listquantity = new ArrayList<>();
           // ArrayList<String> listrate = new ArrayList<>();
            
            //Putting values from the strings to the arraylist
            StringTokenizer s=new StringTokenizer(materialstring,",");
            while(s.hasMoreTokens())
            {
            listmaterial.add(s.nextToken());
            }
            
            int count = 0;
            s=new StringTokenizer(quantitystring,",");
            System.out.println(quantitystring+"Hiiii");
            while(s.hasMoreTokens())
            {
            listquantity.add(s.nextToken()+",");
            count++;
            }
            System.out.println(count);
            
            int p = 0;
            for(String a : listquantity)
            {
                System.out.println(a);
                p++;
            }
            
//            s=new StringTokenizer(ratestring,",");
//            while(s.hasMoreTokens())
//            {
//            listrate.add(s.nextToken()+",");
//            }
//            
            //counting number of elements in the strings
            
            for(String a : listmaterial)
            {
                count++;
                System.out.println(a);
            }
            
            System.out.println(materialname);
            
            
            //Getting the position of material 
            System.out.println(materialname);
            int i = 0;
            int j = 0;
            for(i = 0; i<=listmaterial.size(); i++)
            {
                if((listmaterial.get(i)).equals(materialname))
                {
                    System.out.println("Hehe");
                    break;
                }
                
            }
            System.out.println(i);
            //Getting old quantity value
            oldquantity = Float.parseFloat((listquantity.get(i).replaceAll("'","")).replaceAll(",",""));
            System.out.println("hii"+" "+oldquantity);
            System.out.println(updatedquantity);
            //Updating new strings for quantity and rate
            String newquantitystring = "";
          //  String newratestring = "";
            System.out.println(listquantity.size()+"Hihi");
            for(String a : listquantity)
            {
                System.out.println(a);
            }
            for(int o = 0; o<listmaterial.size(); o++)
            {
                if(o==i)
                {
                    if(o==0)
                    {
                        if(o==(listmaterial.size()))
                        {
                        newquantitystring = newquantitystring+"'"+updatedquantity+"'";
                        System.out.println(newquantitystring);
                        }
                        else
                        {
                            newquantitystring = newquantitystring+"'"+updatedquantity+"',";
                        }
                    }
                    else
                    {
                         if(o!=(listmaterial.size()))
                        {
                            newquantitystring = newquantitystring+"'"+updatedquantity+"',";
                        }
                        else
                        {
                        newquantitystring = newquantitystring+",'"+updatedquantity+"'";
                        }
                    }
                }
                else
                {
                    newquantitystring = newquantitystring+listquantity.get(o);
                }
            }
            
            //out.println(newquantitystring);
            
//            for(int o = 0; o<listmaterial.size(); o++)
//            {
//                if(o==i)
//                {
//                    if(o==0)
//                    {
//                        if(o==(listmaterial.size()))
//                        {
//                        newratestring = newratestring+"'"+updatedrate+"'";
//                        System.out.println(newratestring);
//                        }
//                        else
//                        {
//                            newratestring = newratestring+"'"+updatedrate+"',";
//                        }
//                    }
//                    else
//                    {
//                        if(o!=(listmaterial.size()))
//                        {
//                            newratestring = newratestring+"'"+updatedrate+"',";
//                        }
//                        else
//                        {
//                        newratestring = newratestring+",'"+updatedrate+"'";
//                        }
//                    }
//                    
//                }
//                else
//                {
//                    System.out.println(listrate.get(o));
//                    newratestring = newratestring+listrate.get(o);
//                }
//            }
            
             
          //  System.out.println(newratestring);
            newquantitystring=newquantitystring.replaceAll("'","");
            demoquery = "update transactions set Party_Name='"+partyname+"',SoldBy='"+soldby+"' , Quantity='"+newquantitystring+"' where transaction_id='"+saleid+"'";
            int t = st.executeUpdate(demoquery);
        //    newratestring=newratestring.replaceAll("'","");
            materialname=materialname.replaceAll("'","");
            if(t>0)
            {
                demoquery = "update sale set party_name='"+partyname+"', quantity='"+newquantitystring+"', sold_by='"+soldby+"' where sale_id='"+saleid+"'";
                t = st.executeUpdate(demoquery);
                if(t>0)
                {
                    demoquery = "select Quantity from "+warehousestring+" where Material_Name='"+materialname+"'";
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
            
            
            String query="update "+warehousestring+" set Quantity='"+temp7+"' where Material_Name='"+materialname+"' ";
            con=db.getConnection();
            st=con.createStatement();
            int x=st.executeUpdate(query);
            
            query ="select Stored_Quantity from items where Material_Name='"+materialname+"' ";
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
            
            query ="update items set Stored_Quantity='"+temp8+"' where Material_Name='"+materialname+"'";
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