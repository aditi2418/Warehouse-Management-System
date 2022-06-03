
package dto;


public class UserDTO {
    
    String username,password,id,mode,warehouse,partyname;
    
    public void setUsername(String username)
    {
        this.username=username;
    }
     public String getUsername()
    {
        return username;
    }
     public void setPassword(String password)
     {
         this.password=password;
        
     }
     public String getPassword()
     {
         return password;
     }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getWarehouse() {
        return warehouse;
    }

    public void setWarehouse(String warehouse) {
        this.warehouse = warehouse;
    }

    public String getPartyname() {
        return partyname;
    }

    public void setPartyname(String partyname) {
        this.partyname = partyname;
    }
}
