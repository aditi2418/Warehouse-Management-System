
package controller;

import db.DBConnector;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddDocumentServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class AddDocumentServlet extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException,ServletException
    {
        response.sendRedirect("index.html");
    }
    public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException
    {
        Statement st=null;
        PreparedStatement ps=null;
        Connection con=null;
        DBConnector db=new DBConnector();
	PrintWriter out = response.getWriter();
        String id=request.getParameter("id");
        String mode=request.getParameter("mode");
        int ida = Integer.parseInt(id);
        
        
        InputStream inputStream = null; // input stream of the upload file
        InputStream inputStream1 = null;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        InputStream inputStream4 = null;
        InputStream inputStream5 = null;
        InputStream inputStream6 = null;
        
        
        String send = mode+"-data";
           
        out.println("HI");
        System.out.println(mode+id);
        InputStream b1 = null;
        InputStream b2 = null;
        InputStream b3 = null;
        InputStream b4 = null;
        InputStream b5 = null;
        InputStream b6 = null;
        InputStream b7 = null;
        int tempid = 0;
        
        Blob a1 = null;
        Blob a2 = null;
        Blob a3 = null;
        Blob a4 = null;
        Blob a5 = null;
        Blob a6 = null;
        Blob a7 = null;
        
        
        try
        {
            st=db.getStatement();
            float n = 0.0f;
            
            
            String queryn = "select * from "+mode+"documents where "+mode+"_id='"+ida+"'";
            out.println("HI");
        
            ResultSet rsn = st.executeQuery(queryn);
            while(rsn.next())
            {
                Blob tempblob = rsn.getBlob(1);
                n = 1;
            }
            System.out.println(n);
            rsn.close();
            out.println("HI");
            System.out.println("HI");
            if(n!=0)
            {
        
        
        try{
            String queryq = "select * from "+mode+"documents where "+mode+"_id='"+ida+"'";
            ResultSet rsq = st.executeQuery(queryq);
            while(rsq.next())
            {
                a1 = rsq.getBlob(1);
                a2 = rsq.getBlob(2);
                a3 = rsq.getBlob(3);
                a4 = rsq.getBlob(4);
                a5 = rsq.getBlob(5);
                a6 = rsq.getBlob(6);
                a7 = rsq.getBlob(7);
                tempid = rsq.getInt(8);
                
            }
            rsq.close();
            System.out.println("rsq.next_done!");
            System.out.println(tempid);
            out.println(b1);
            System.out.println(b1);
        }
        catch (Exception e)
        {
            System.out.println("Your New Approach  Not Working.....");
        }
        
        
        
        
        
        // obtains the upload file part in this multipart request 
        Part filePart = request.getPart("input25[]");
        out.println(filePart);
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        out.println(inputStream);

        Part filePart1 = request.getPart("input26[]");
        out.println(filePart1);
        if (filePart1 != null) {
            // prints out some information for debugging
            System.out.println(filePart1.getName());
            System.out.println(filePart1.getSize());
            System.out.println(filePart1.getContentType());
             
            // obtains input stream of the upload file
            inputStream1 = filePart.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        out.println(inputStream1);
        
        Part filePart2 = request.getPart("input27[]");
        out.println(filePart2);
        if (filePart2 != null) {
            // prints out some information for debugging
            System.out.println(filePart2.getName());
            System.out.println(filePart2.getSize());
            System.out.println(filePart2.getContentType());
             
            // obtains input stream of the upload file
            inputStream2 = filePart2.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        out.println(inputStream2);
        
        Part filePart3 = request.getPart("input28[]");
        out.println(filePart3);
        if (filePart3!= null) {
            // prints out some information for debugging
            System.out.println(filePart3.getName());
            System.out.println(filePart3.getSize());
            System.out.println(filePart3.getContentType());
             
            // obtains input stream of the upload file
            inputStream3 = filePart3.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        out.println(inputStream3);
        
        Part filePart4 = request.getPart("input29[]");
        out.println(filePart4);
        if (filePart4 != null) {
            // prints out some information for debugging
            System.out.println(filePart4.getName());
            System.out.println(filePart4.getSize());
            System.out.println(filePart4.getContentType());
             
            // obtains input stream of the upload file
            inputStream4 = filePart4.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        out.println(inputStream4);
        
        Part filePart5 = request.getPart("input30[]");
        out.println(filePart5);
        if (filePart5 != null) {
            // prints out some information for debugging
            System.out.println(filePart5.getName());
            System.out.println(filePart5.getSize());
            System.out.println(filePart5.getContentType());
             
            // obtains input stream of the upload file
            inputStream5 = filePart5.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        out.println(inputStream5);
        
        Part filePart6 = request.getPart("input31[]");
        out.println(filePart6);
        if (filePart6 != null) {
            // prints out some information for debugging
            System.out.println(filePart6.getName());
            System.out.println(filePart6.getSize());
            System.out.println(filePart6.getContentType());
             
            // obtains input stream of the upload file
            inputStream6 = filePart6.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        out.println(inputStream6);
        
        //Checking Whether InputStream Is Null Nor Not
        try
        {
            if(inputStream.available()==0)
            {
                inputStream = a1.getBinaryStream();
            }
            System.out.println("Hiiiiiiiiiiiiiii");
            if(inputStream1.available()==0)
            {
                inputStream1 = a2.getBinaryStream();
                System.out.println("Hiiiiiiiiiiiiiii");
            }
            if(inputStream2.available()==0)
            {
                inputStream2 = a3.getBinaryStream();
                System.out.println("Hiiiiiiiiiiiiiii");
            }
            if(inputStream3.available()==0)
            {
                inputStream3 = a4.getBinaryStream();
                System.out.println("Hiiiiiiiiiiiiiii");
            }
            if(inputStream4.available()==0)
            {
                inputStream4 = a5.getBinaryStream();
                System.out.println("Hiiiiiiiiiiiiiii");
            }
            if(inputStream5.available()==0)
            {
                inputStream5 = a6.getBinaryStream();
                System.out.println("Hiiiiiiiiiiiiiii");
            }
            if(inputStream6.available()==0)
            {
                inputStream6 = a7.getBinaryStream();
                System.out.println("Hiiiiiiiiiiiiiii");
            }
        
        }
        catch(Exception e)
        {
            System.out.println("Your New Approach Not Working 1 .....");
        }
        
        out.println("I am here!");
        
        String hey = mode+"documents";
        out.println(mode);
                System.out.println(hey);
        
        try
        {
            String query="update "+mode+"documents set commercial_invoice=?, packing_details=?, lading_bills=?, entry_bill=?, CBL=?, OBL=?, custom_subsity=? where "+mode+"_id='"+ida+"'";
            con=db.getConnection();
            out.println(con);
            out.println("I am here!");
            ps=con.prepareStatement(query);     
            out.println("I am here!");
            
            
            
            int length = inputStream.available();
             
            if (inputStream != null) {
                 System.out.println(length);
                 
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(1,inputStream,length);
            }
            out.println("1");
            
            int length1 = inputStream1.available();
            if (inputStream1 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(2, inputStream1,length1);
            }
            out.println("2");
            
            int length2 = inputStream2.available();
            if (inputStream2 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(3, inputStream2,length2);
            }
            out.println("3");
            
            int length3 = inputStream3.available();
            if (inputStream3 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(4, inputStream3,length3);
            }
            out.println("4");
            
            int length4 = inputStream4.available();
            if (inputStream4 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(5, inputStream4,length4);
            }
            out.println("5");
            
            int length5 = inputStream5.available();
            if (inputStream5 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(6, inputStream5,length5);
            }
            out.println("6");
           
            int length6 = inputStream6.available();
            if (inputStream6 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(7, inputStream6,length6);
            }
            out.println("7");
            
            
            
            int a=ps.executeUpdate();
            out.println("9");
            
            if(a>0)
            {
                
                
                        System.out.println("updated");
                        response.sendRedirect(""+send+".jsp");
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
        
        else
        {
            
            System.out.println("Insert Part Begins");
       
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("input25[]");
        out.println(filePart);
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }

        Part filePart1 = request.getPart("input26[]");
        out.println(filePart1);
        if (filePart1 != null) {
            // prints out some information for debugging
            System.out.println(filePart1.getName());
            System.out.println(filePart1.getSize());
            System.out.println(filePart1.getContentType());
             
            // obtains input stream of the upload file
            inputStream1 = filePart.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        Part filePart2 = request.getPart("input27[]");
        out.println(filePart2);
        if (filePart2 != null) {
            // prints out some information for debugging
            System.out.println(filePart2.getName());
            System.out.println(filePart2.getSize());
            System.out.println(filePart2.getContentType());
             
            // obtains input stream of the upload file
            inputStream2 = filePart2.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        Part filePart3 = request.getPart("input28[]");
        out.println(filePart3);
        if (filePart3!= null) {
            // prints out some information for debugging
            System.out.println(filePart3.getName());
            System.out.println(filePart3.getSize());
            System.out.println(filePart3.getContentType());
             
            // obtains input stream of the upload file
            inputStream3 = filePart3.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        Part filePart4 = request.getPart("input29[]");
        out.println(filePart4);
        if (filePart4 != null) {
            // prints out some information for debugging
            System.out.println(filePart4.getName());
            System.out.println(filePart4.getSize());
            System.out.println(filePart4.getContentType());
             
            // obtains input stream of the upload file
            inputStream4 = filePart4.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        
        Part filePart5 = request.getPart("input30[]");
        out.println(filePart5);
        if (filePart5 != null) {
            // prints out some information for debugging
            System.out.println(filePart5.getName());
            System.out.println(filePart5.getSize());
            System.out.println(filePart5.getContentType());
             
            // obtains input stream of the upload file
            inputStream5 = filePart5.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        
        Part filePart6 = request.getPart("input31[]");
        out.println(filePart6);
        if (filePart6 != null) {
            // prints out some information for debugging
            System.out.println(filePart6.getName());
            System.out.println(filePart6.getSize());
            System.out.println(filePart6.getContentType());
             
            // obtains input stream of the upload file
            inputStream6 = filePart6.getInputStream();
           // byte[] bites = readAllBytes(inputStream);
            
            
        }
        
        
        try
        {
            String query="insert into "+mode+"documents Values(?,?,?,?,?,?,?,?)";
            con=db.getConnection();
            out.println(con);
            out.println("I am here!");
            ps=con.prepareStatement(query);     
            out.println("I am here!");
            
            
            
            int length = inputStream.available();
             
            if (inputStream != null) {
                 System.out.println(length);
                 
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(1,inputStream,length);
            }
            out.println("1");
            
            int length1 = inputStream1.available();
            if (inputStream1 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(2, inputStream1,length1);
            }
            out.println("2");
            
            int length2 = inputStream2.available();
            if (inputStream2 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(3, inputStream2,length2);
            }
            out.println("3");
            
            int length3 = inputStream3.available();
            if (inputStream3 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(4, inputStream3,length3);
            }
            out.println("4");
            
            int length4 = inputStream4.available();
            if (inputStream4 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(5, inputStream4,length4);
            }
            out.println("5");
            
            int length5 = inputStream5.available();
            if (inputStream5 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(6, inputStream5,length5);
            }
            out.println("6");
           
            int length6 = inputStream6.available();
            if (inputStream6 != null) {
                // fetches input stream of the upload file for the blob column
                ps.setBinaryStream(7, inputStream6,length6);
            }
            out.println("7");
            
            ps.setInt(8,ida);
            out.println("8");
            
            int a=ps.executeUpdate();
            out.println("9");
            
            if(a>0)
            {
                
                
                        System.out.println("updated");
                        response.sendRedirect(""+send+".jsp");
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
        catch(Exception e)
        {
            System.out.println("Hehe");
        }
}
}

