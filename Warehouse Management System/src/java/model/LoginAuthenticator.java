
package model;

import db.DBConnector;
import dto.UserDTO;
import java.sql.ResultSet;
import java.sql.Statement;


public class LoginAuthenticator {
   
    
    public boolean isLogin(UserDTO user)
    {
        String username=user.getUsername();
        String password=user.getPassword();
        String tablepassword="";
        Statement st=null;
        
        DBConnector db=new DBConnector();
       
        
        try
        {
            String query="Select password from admin where username='"+username.trim()+"'";
            st=db.getStatement();
            ResultSet rs=st.executeQuery(query);
            if(rs.next())
            {
                tablepassword=rs.getString("password");
            }
            else
            {
                return false;
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        if(username!="null" && password!="null" && !username.equals("") && password.equals(tablepassword))
        {
        return true;
        }
        return false;
        
    }
    
}
