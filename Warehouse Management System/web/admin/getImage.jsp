<%-- 
    Document   : getImage
    Created on : 30 Oct, 2021, 5:12:29 AM
    Author     : 91934
--%>

<%@ page trimDirectiveWhitespaces="true" %>
<%@page import="java.sql.Statement"%>
<%@page import="db.DBConnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("id");
    String mode = request.getParameter("mode");
    int a = Integer.parseInt(request.getParameter("a"));
    int b = Integer.parseInt(id);
    
    String temp = mode+"_id";
    System.out.println(temp);
    try {
        Statement st=null;
        PreparedStatement ps=null;
        Connection con=null;
        DBConnector db=new DBConnector();
        st=db.getStatement();
        String query ="select * from "+mode+"documents where "+mode+"_id='"+b+"'";
        ResultSet rs = st.executeQuery(query);
        
        if (rs.next()) {
            System.out.println("Hihi");
            Blob blob = rs.getBlob(a);
            byte byteArray[] = blob.getBytes(1, (int) blob.length());
            response.setContentType("image/gif");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            System.out.println("Hihi");
            os.flush();
            os.close();
            return;
        } else {
            System.out.println("No image found with this id.");
        }
    } catch (Exception e) {
        out.println(e);
    }
%>
