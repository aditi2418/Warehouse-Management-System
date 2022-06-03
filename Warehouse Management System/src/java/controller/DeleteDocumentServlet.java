package controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import db.DBConnector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 91934
 */
@WebServlet("/DeleteDocumentServlet")
public class DeleteDocumentServlet extends HttpServlet {

    public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException,ServletException
    {
        PrintWriter out = response.getWriter();
        System.out.println("Hao");
        String mode = request.getParameter("mode");
        int a = Integer.parseInt(request.getParameter("a"));
        int id = Integer.parseInt(request.getParameter("id"));
        String temp = "";
        switch(a)
        {
            case 1: temp = "commercial_invoice";
            break;
            case 2: temp = "packing_details";
            break;
            case 3: temp = "lading_bills";
            break;
            case 4: temp = "entry_bill";
            break;
            case 5: temp = "CBL";
            break;
            case 6: temp = "OBL";
            break;
            case 7: temp = "custom_subsity";
            break;
        }
        
        System.out.println(mode+a+id);
        
        Statement st=null;
        PreparedStatement ps=null;
        Connection con=null;
        DBConnector db=new DBConnector();
        con=db.getConnection();
        try
        {
            st=con.createStatement();
            String query = "update "+mode+"documents set "+temp+"='null' where "+mode+"_id='"+id+"'";
            int x = st.executeUpdate(query);
            if(x>0)
            {
                response.sendRedirect("add-document.jsp?id="+id+"&mode="+mode+"");
            }
        }
        catch(SQLException e)
        {
            System.out.println("Deletion Failed!");
        }
        
        
        
    }
}
