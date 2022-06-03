<%-- 
    Document   : newedit
    Created on : 10 Nov, 2021, 11:08:58 PM
    Author     : Admin
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String transfer_id=request.getParameter("transfer_id");
        String from="";
        String to="";
        String date="";
        %>
        <form action="NewEditServlet_3" method="Post">
            <input type="text" value="<%out.print(transfer_id);%>" name="transferid" hidden>
             <select id="material-input" name="material" class="form-control" placeholder="Material Name" style="color: #a4a4a4" required>
                                                                <option value="">- - Material Name - -</option>
                                                            <% 
                                                                Statement st=null;
                                                                DBConnector db=new DBConnector();
                                                                st=db.getStatement();
                                                                
                                                                try
                                                            {
                                                             ArrayList<String> mat=new ArrayList<String>();
                                                             String query="select * from transfer where transfer_id='"+transfer_id+"'";
                                                             ResultSet rs=st.executeQuery(query);
                                                             String str="";
                                                             while(rs.next())
                                                             { 
                                                                 str=rs.getString("material_name");
                                                                 from=rs.getString("from");
                                                                 to=rs.getString("to");
                                                                
                                                             }
                                                             
                                                             StringTokenizer s=new StringTokenizer(str,",");
                                                             while(s.hasMoreTokens())
                                                             {
                                                               mat.add(s.nextToken());
                                                             }
                                                            int i=0;
                                                            while(mat.size()>i)
                                                            {
                                                            %>
                                                            <option value="<%out.print(mat.get(i));%>"><%out.print(mat.get(i));%></option>
                                                               <%i++;%>
                                                                <%
                                                               }
                                                               }
                                                               catch(SQLException e)
                                                                {
                                                                   System.out.println(e);
                                                                }
                                                              %>
             </select>
             <br>Quantity: <input type="text" name="newquantity" placeholder="">
             <h1><%out.println(from);%></h1>
             <br>From: <input type="text" name="from" value="<%out.print(from);%>" >
             <br>To: <input type="text" name="to" value="<%out.print(to);%>" >
             <br>rate:<input type="text" name="rate">
            <br> <input type="submit" value="submit">
        </form>
    </body>
</html>
