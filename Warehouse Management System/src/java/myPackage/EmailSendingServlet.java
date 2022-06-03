/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package myPackage;



import dto.UserDTO;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 

public class EmailSendingServlet extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;
 
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
 
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // reads form fields
        
        HttpSession session=request.getSession();
        UserDTO user1=(UserDTO)session.getAttribute("obj");
        String id=user1.getId();
        String mode=user1.getMode();
	String Mode = mode.toLowerCase();
        String warehouse=user1.getWarehouse();
        String party=user1.getPartyname();
        
        String recipient = "durvakulkarni3@gmail.com"; //request.getParameter("recipient");
        String subject =  mode+" done";//request.getParameter("subject");
        String content = "id:"+id+"\n"+"warehouse:"+warehouse+"\n"+"party_name:"+party+"\n"+"mode:"+mode; //request.getParameter("content");
        
        
        String resultMessage = "";
 
        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
                    content);
            resultMessage = "The e-mail was sent successfully";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/"+Mode+"-data.jsp").forward(
                    request, response);
        }
    }
}