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
        String import_id=request.getParameter("import_id");
        String pn="";
        String sb="";
        String payment="";
        %>
        <form action="NewEditServlet_1" method="Post">
            <input type="text" value="<%out.print(import_id);%>" name="importid" hidden>
             <select id="material-input" name="material" class="form-control" placeholder="Material Name" style="color: #a4a4a4" required>
                                                                <option value="">- - Material Name - -</option>
                                                            <% 
                                                                Statement st=null;
                                                                DBConnector db=new DBConnector();
                                                                st=db.getStatement();
                                                                
                                                                try
                                                            {
                                                             ArrayList<String> mat=new ArrayList<String>();
                                                             String query="select * from import where import_id='"+import_id+"'";
                                                             ResultSet rs=st.executeQuery(query);
                                                             String str="";
                                                             while(rs.next())
                                                             { 
                                                                 str=rs.getString("material_name");
                                                                 pn=rs.getString("party_name");
                                                                 sb=rs.getString("sold_by");
                                                                 payment=rs.getString("payment");
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
             <br>PN: <input type="text" name="party_name" value="<%out.print(pn);%>">
             <br>SB: <input type="text" name="sold_by" value="<%out.print(sb);%>">
             <br>P: <input type="text" name="payment" value="<%out.print(payment);%>">
             <br>rate:<input type="text" name="rate">
            <br> <input type="submit" value="submit">
        </form>
    </body>
</html>
