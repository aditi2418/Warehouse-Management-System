<%@page import="db.DBConnector"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    
<!-- Mirrored from phantom-themes.com/modern/Source/admin1/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:11:45 GMT -->
<head>
        
        <!-- Title -->
        <title>Acron International</title>
        
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta charset="UTF-8">
        <meta name="description" content="Admin Dashboard Template" />
        <meta name="keywords" content="admin,dashboard" />
        <meta name="author" content="Steelcoders" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        
        
        <style>
            
            
            
            .button-7 {
  background-color: #22baa0;
  border: 1px solid transparent;
  border-radius: 3px;
  box-shadow: rgba(255, 255, 255, .4) 0 1px 0 0 inset;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,system-ui,"Segoe UI","Liberation Sans",sans-serif;
  font-size: 13px;
  font-weight: 400;
  line-height: 1.15385;
  margin-left: -2px;
  outline: none;
  padding: 8px .8em;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: baseline;
  white-space: nowrap;
}

.button-7:hover,
.button-7:focus {
  background-color: #07c;
}

.button-7:focus {
  box-shadow: 0 0 0 4px rgba(0, 149, 255, .15);
}

.button-7:active {
  background-color: #0064bd;
  box-shadow: none;
}
        
     

       * {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 60%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px ;
   
  display: inline-block;
  font-size: 1em;
   text-align:left;
       width: 150px;
  
}


#Purchase:hover {
  
  background-color: #8EEBEC;
}

#Purchase {
  color: white;
}
.button-7 {
  height: 2.5em;
  width: 28%;
  padding: 1.5em auto;
  margin: 1em auto;
  background-color: #43BFC7;
  border: none;
  border-radius: 3px;
  text-transform: uppercase;
  letter-spacing: 0.5em;
  transition: all 0.2s cubic-bezier(.4,0,.2,1);
  float: center;
 
}

            .container {
  border-radius: 22px;
  background-color: #F1F4F9;
  padding: 70px ;
}

.col-25 {
  float: left;
  width: 20%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 80%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
} 
        </style>
        
        <!-- Styles -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
        <link href="assets/plugins/pace-master/themes/blue/pace-theme-flash.css" rel="stylesheet"/>
        <link href="assets/plugins/uniform/css/uniform.default.min.css" rel="stylesheet"/>
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/fontawesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/line-icons/simple-line-icons.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/offcanvasmenueffects/css/menu_cornerbox.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/waves/waves.min.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/3d-bold-navigation/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/slidepushmenus/css/component.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/weather-icons-master/css/weather-icons.min.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/metrojs/MetroJs.min.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/toastr/toastr.min.css" rel="stylesheet" type="text/css"/>	
        	
        <!-- Theme Styles -->
        <link href="assets/css/modern.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/themes/green.css" class="theme-color" rel="stylesheet" type="text/css"/>
        <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
        
        <script src="assets/plugins/3d-bold-navigation/js/modernizr.js"></script>
        <script src="assets/plugins/offcanvasmenueffects/js/snap.svg-min.js"></script>
        
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
       
        <style>
        #sale:hover {
  background-color: #8EEBEC;
}

#sale {
  color: #22baa0;
}
button {
  height: 3em;
  width: auto;
  padding: 0.9em auto;
  margin: 1em auto;
  background-color:#f1f4f9;
  border: 1px solid #22baa0;
  border-radius: 3px;
  text-transform: uppercase;
  transition: all 0.2s cubic-bezier(.4,0,.2,1);
 
}
    </style>
    </head>
   <body class="page-header-fixed">
        <form class="search-form" action="#" method="GET">
            <div class="input-group">
                <input type="text" name="search" class="form-control search-input" placeholder="Search...">
                <span class="input-group-btn">
                    <button class="btn btn-default close-search waves-effect waves-button waves-classic" type="button"><i class="fa fa-times"></i></button>
                </span>
            </div><!-- Input Group -->
        </form><!-- Search Form -->
        <main class="page-content content-wrap">
            <div class="navbar">
                <div class="navbar-inner">
                    <div class="sidebar-pusher">
                        <a href="javascript:void(0);" class="waves-effect waves-button waves-classic push-sidebar">
                            <i class="fa fa-bars"></i>
                        </a>
                    </div>
                    <div class="logo-box">
                        <a  class="logo-text"><span>Acron International</span></a>
                    </div><!-- Logo Box -->
                    <div class="search-button">
                        <a href="javascript:void(0);" class="waves-effect waves-button waves-classic show-search"><i class="fa fa-search"></i></a>
                    </div>
                    <div class="topmenu-outer">
                        <div class="top-menu">
                            <ul class="nav navbar-nav navbar-left">
                                <li>		
                                    <a href="javascript:void(0);" class="waves-effect waves-button waves-classic sidebar-toggle"><i class="fa fa-bars"></i></a>
                                </li>
                                <li>
                                    <a href="#cd-nav" class="waves-effect waves-button waves-classic cd-nav-trigger"><i class="fa fa-diamond"></i></a>
                                </li>
                                <li>		
                                    <a href="javascript:void(0);" class="waves-effect waves-button waves-classic toggle-fullscreen"><i class="fa fa-expand"></i></a>
                                </li>
                                    <li class="li-group">
                                          
                                        
                                        
                                    </ul>
                                
                            
                            <ul class="nav navbar-nav navbar-right">
                                <li>	
                                    <a href="javascript:void(0);" class="waves-effect waves-button waves-classic show-search"><i class="fa fa-search"></i></a>
                                </li>
                               
                                
                               
                                <li>
                                    <a href="LogOutAuthenticator.java" class="log-out waves-effect waves-button waves-classic">
                                        <span><i class="fa fa-sign-out m-r-xs"></i>Log out</span>
                                    </a>
                                </li>
                             
                            </ul><!-- Nav -->
                        </div><!-- Top Menu -->
                    </div>
                </div>
            </div><!-- Navbar -->
            <div class="page-sidebar sidebar">
                <div class="page-sidebar-inner slimscroll">
                   
                    <ul class="menu accordion-menu">
                        <li ><a href="home.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-home"></span><p>Dashboard</p></a></li>
                        <li><a href="sale.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-briefcase"></span><p>Sale</p></a></li>
                        <li><a href="transfer.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-send"></span><p>Transfer</p></a></li>
                        
                         <li class="droplink"><a href="#" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-shopping-cart"></span><p>Purchase</p><span class="arrow"></span></a>
                            <ul class="sub-menu">
                                <li><a href="importpurchase.jsp">Import</a></li>
                                <li><a href="domesticpurchase.jsp">Domestic</a></li>
                                
                            </ul>
                        </li>
                     <li><a href="transaction.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-sort"></span><p>Transaction</p></a></li>
                        <li class="active"><a href="item.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-menu-hamburger"></span><p>Item</p></a></li>
                        <li><a href="warehouse.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th"></span><p>Warehouse</p></a></li>
                        <li><a href="LogOutAuthenticator.java" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-log-out"></span><p>Log Out</p></a></li>
                        
                        
                    
                </div><!-- Page Sidebar Inner -->
            </div><!-- Page Sidebar -->
            <div class="page-inner">
                <div class="page-title">
                    <h3>Materials</h3>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="home.html">Home</a></li>
                            <li class="active">Materials</li>
                        </ol>
                    </div>
                </div>
                


 <br><br>
                              
 
 <center><b><u><h1 style="display:inline; margin-top: 2%;"> MATERIAL LIST</b></u></h1></center><div class="row">
      <div class="col-25">
        <label for="filter">Filter</label>
      </div>
     <form action="item.jsp"> <div class="col-75">
          <select id="filter" name="colour" autofocus>
          <option value="allitems" selected>All Items</option>
          <option value="white">White</option>
          <option value="grey">Grey</option>
          <option value="blue">Blue</option>
          <option value="others">Others</option>
          <option value="resin">Resin/Off Grade</option>
          <option value="dead">Dead Stock</option>
        </select>
         </div><button style="border: none;"><i class="fa fa-search" aria-hidden="true"></i></button></form>
    </div><button id="addNewRow" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModalLong" style="float:right; display:inline; margin-right: 2%;"><i class="fa fa-plus" aria-hidden="true"></i> &nbsp;Material</button>
                
        <div class="w3-container">
            <table class="w3-table-all w3-hoverable" style="width:90%; margin:2%;">
                <tr style="background-color:#22baa0;">
                    <th>Material Name</th>
                    <th>Quantity</th>
                    <th>Color</th>
                   
                </tr>

                <%
                    String choice=request.getParameter("colour");
                    System.out.println(choice);
                  
        Statement st=null;
        DBConnector db=new DBConnector();
        st=db.getStatement();
        try
        {
         if(choice!=null)
         {
             if(choice.equals("allitems"))
             {
                 String query="select * from items";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                    <tbody style="border: 1px solid black;">
                        <tr data-id="1">
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("Material_Name"));%></td>
                            <td data-field="birthday" style="border: 1px solid black;"><%out.println(rs.getString("Stored_Quantity"));%></td>
                            <td data-field="age" style="border: 1px solid black;"><%out.println(rs.getString("Color"));%></td>
                           
                            <td name="buttons" style="border: 1px solid black;"><div class="btn-group pull-right"><button id="bEdit" type="button" class="btn btn-sm btn-default" onclick="rowEdit(this);"><span class="glyphicon glyphicon-pencil"> </span></button><button id="bElim" type="button" class="btn btn-sm btn-default" onclick="rowElim(this);"><span class="glyphicon glyphicon-trash"> </span></button><button id="bAcep" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowAcep(this);"><span class="glyphicon glyphicon-ok"> </span></button><button id="bCanc" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowCancel(this);"><span class="glyphicon glyphicon-remove"> </span></button></div></td>
                        </tr>
                        <%
        }
             }
             if(choice.equals("white"))
             {
         String query="select * from items where Color='white'";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                    <tbody style="border: 1px solid black;">
                        <tr data-id="1">
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("Material_Name"));%></td>
                            <td data-field="birthday" style="border: 1px solid black;"><%out.println(rs.getString("Stored_Quantity"));%></td>
                            <td data-field="age" style="border: 1px solid black;"><%out.println(rs.getString("Color"));%></td>
                           
                           </tr>
                        <%
        }
             }
             
             if(choice.equals("grey"))
             {
         String query="select * from items where Color='grey'";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                    <tbody style="border: 1px solid black;">
                        <tr data-id="1">
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("Material_Name"));%></td>
                            <td data-field="birthday" style="border: 1px solid black;"><%out.println(rs.getString("Stored_Quantity"));%></td>
                            <td data-field="age" style="border: 1px solid black;"><%out.println(rs.getString("Color"));%></td>
                           
                            <td name="buttons" style="border: 1px solid black;"><div class="btn-group pull-right"><button id="bEdit" type="button" class="btn btn-sm btn-default" onclick="rowEdit(this);"><span class="glyphicon glyphicon-pencil"> </span></button><button id="bElim" type="button" class="btn btn-sm btn-default" onclick="rowElim(this);"><span class="glyphicon glyphicon-trash"> </span></button><button id="bAcep" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowAcep(this);"><span class="glyphicon glyphicon-ok"> </span></button><button id="bCanc" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowCancel(this);"><span class="glyphicon glyphicon-remove"> </span></button></div></td>
                        </tr>
                        <%
        }
             }

             if(choice.equals("blue"))
             {
         String query="select * from items where Color='blue'";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                    <tbody style="border: 1px solid black;">
                        <tr data-id="1">
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("Material_Name"));%></td>
                            <td data-field="birthday" style="border: 1px solid black;"><%out.println(rs.getString("Stored_Quantity"));%></td>
                            <td data-field="age" style="border: 1px solid black;"><%out.println(rs.getString("Color"));%></td>
                           
                            <td name="buttons" style="border: 1px solid black;"><div class="btn-group pull-right"><button id="bEdit" type="button" class="btn btn-sm btn-default" onclick="rowEdit(this);"><span class="glyphicon glyphicon-pencil"> </span></button><button id="bElim" type="button" class="btn btn-sm btn-default" onclick="rowElim(this);"><span class="glyphicon glyphicon-trash"> </span></button><button id="bAcep" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowAcep(this);"><span class="glyphicon glyphicon-ok"> </span></button><button id="bCanc" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowCancel(this);"><span class="glyphicon glyphicon-remove"> </span></button></div></td>
                        </tr>
                        <%
        }
             }

             if(choice.equals("others"))
             {
         String query="select * from items where Color='others'";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                    <tbody style="border: 1px solid black;">
                        <tr data-id="1">
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("Material_Name"));%></td>
                            <td data-field="birthday" style="border: 1px solid black;"><%out.println(rs.getString("Stored_Quantity"));%></td>
                            <td data-field="age" style="border: 1px solid black;"><%out.println(rs.getString("Color"));%></td>
                           
                            <td name="buttons" style="border: 1px solid black;"><div class="btn-group pull-right"><button id="bEdit" type="button" class="btn btn-sm btn-default" onclick="rowEdit(this);"><span class="glyphicon glyphicon-pencil"> </span></button><button id="bElim" type="button" class="btn btn-sm btn-default" onclick="rowElim(this);"><span class="glyphicon glyphicon-trash"> </span></button><button id="bAcep" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowAcep(this);"><span class="glyphicon glyphicon-ok"> </span></button><button id="bCanc" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowCancel(this);"><span class="glyphicon glyphicon-remove"> </span></button></div></td>
                        </tr>
                        <%
        }
             }

             if(choice.equals("dead"))
             {
         String query="select * from items where Color='dead'";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                    <tbody style="border: 1px solid black;">
                        <tr data-id="1">
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("Material_Name"));%></td>
                            <td data-field="birthday" style="border: 1px solid black;"><%out.println(rs.getString("Stored_Quantity"));%></td>
                            <td data-field="age" style="border: 1px solid black;"><%out.println(rs.getString("Color"));%></td>
                           
                            <td name="buttons" style="border: 1px solid black;"><div class="btn-group pull-right"><button id="bEdit" type="button" class="btn btn-sm btn-default" onclick="rowEdit(this);"><span class="glyphicon glyphicon-pencil"> </span></button><button id="bElim" type="button" class="btn btn-sm btn-default" onclick="rowElim(this);"><span class="glyphicon glyphicon-trash"> </span></button><button id="bAcep" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowAcep(this);"><span class="glyphicon glyphicon-ok"> </span></button><button id="bCanc" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowCancel(this);"><span class="glyphicon glyphicon-remove"> </span></button></div></td>
                        </tr>
                        <%
        }
             }

             if(choice.equals("resin"))
             {
         String query="select * from items where Color='resin'";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                    <tbody style="border: 1px solid black;">
                        <tr data-id="1">
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("Material_Name"));%></td>
                            <td data-field="birthday" style="border: 1px solid black;"><%out.println(rs.getString("Stored_Quantity"));%></td>
                            <td data-field="age" style="border: 1px solid black;"><%out.println(rs.getString("Color"));%></td>
                           
                            <td name="buttons" style="border: 1px solid black;"><div class="btn-group pull-right"><button id="bEdit" type="button" class="btn btn-sm btn-default" onclick="rowEdit(this);"><span class="glyphicon glyphicon-pencil"> </span></button><button id="bElim" type="button" class="btn btn-sm btn-default" onclick="rowElim(this);"><span class="glyphicon glyphicon-trash"> </span></button><button id="bAcep" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowAcep(this);"><span class="glyphicon glyphicon-ok"> </span></button><button id="bCanc" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowCancel(this);"><span class="glyphicon glyphicon-remove"> </span></button></div></td>
                        </tr>
                        <%
        }
             }
        }
            else
        {
         String query="select * from items";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                    <tbody style="border: 1px solid black;">
                        <tr data-id="1">
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("Material_Name"));%></td>
                            <td data-field="birthday" style="border: 1px solid black;"><%out.println(rs.getString("Stored_Quantity"));%></td>
                            <td data-field="age" style="border: 1px solid black;"><%out.println(rs.getString("Color"));%></td>
                           
                            <td name="buttons" style="border: 1px solid black;"><div class="btn-group pull-right"><button id="bEdit" type="button" class="btn btn-sm btn-default" onclick="rowEdit(this);"><span class="glyphicon glyphicon-pencil"> </span></button><button id="bElim" type="button" class="btn btn-sm btn-default" onclick="rowElim(this);"><span class="glyphicon glyphicon-trash"> </span></button><button id="bAcep" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowAcep(this);"><span class="glyphicon glyphicon-ok"> </span></button><button id="bCanc" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowCancel(this);"><span class="glyphicon glyphicon-remove"> </span></button></div></td>
                        </tr>
                        <%
        }
       }
     }
        catch(Exception e)
        {
            System.out.println(e);
        }
        %>
                    </tbody>
            </table>
        </div>         
                             
                    </div><!-- Main Wrapper -->
                    
                    
                    
<!--Pop-up Modal-->

    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                    
                    

     
                <div align="center" class="container">
  <form action="ItemCheckerServlet" method="post">
      
      
      
      

      

      
      <div class="row">
      <div class="col-25">
        <label for="material">Material Name</label>
      </div>
      <div class="col-75">
       <input type="text" id="material" name="material" placeholder="material..">
      </div>
    </div>
      
      
       <div class="row">
      <div class="col-25">
        <label for="quantity">Quantity</label>
      </div>
      <div class="col-75">
        <input type="text" id="quantity" name="quantity" placeholder="Quantity..">
      </div>
    </div>
      
       
      <div class="row">
      <div class="col-25">
        <label for="colour">Colour</label>
      </div>
      <div class="col-75">
        <select id="colour" name="colour">
          <option value="white">White</option>
          <option value="grey">Grey</option>
          <option value="blue">Blue</option>
          <option value="others">Others</option>
          <option value="resin">Resin/Off Grade</option>
          <option value="dead">Dead Stock</option>
        </select>
      </div>
    </div>
    
      <br>
        <br>
        <button class="button-7"><b>DONE</b></button>
      
      
      
      
      
</form>
                                                
</div>  
                 
                    
                    
                </div>
                <div class="modal-footer">
                   
                </div>
            </div>
        </div>
    </div>
                    
                    
                    
                 
              
</div>
                
             
        </main><!-- Page Content -->
        <nav class="cd-nav-container" id="cd-nav">
          <header>
                <h3>Navigation</h3>
                <a href="#0" class="cd-close-nav">Close</a>
            </header>
            <ul class="cd-nav list-unstyled">
                <li class="cd-selected" data-menu="index">
                    <a href="sale.jsp">
                      <span class="menu-icon glyphicon glyphicon-briefcase"> </span>
                        <p>Sale</p>
                    </a>
                </li>
                <li data-menu="sale">
                    <a href="transfer.jsp">
                      <span class="menu-icon glyphicon glyphicon-send"> </span>
                        <p>Transfer</p>
                    </a>
                </li>
                
                <li data-menu="#">
                    <a href="transaction.jsp">
                      <span class="menu-icon glyphicon glyphicon-sort"> </span>
                        <p>Transaction</p>
                    </a>
                </li>
                <li data-menu="#">
                    <a href="item.jsp">
                       <span class="menu-icon glyphicon glyphicon-menu-hamburger"></span>
                        <p>Items</p>
                    </a>
                </li>
                <li data-menu="calendar">
                    <a href="warehouse.jsp">
                      <span class="menu-icon glyphicon glyphicon-th">
                     </span>
                        <p>Warehouse</p>
                    </a>
                </li>
                 <li data-menu="transfer">
                    <a href="LogOutAuthenticator.java">
                      <span class="menu-icon glyphicon glyphicon-log-out"> </span>
                        <p>Logout</p>
                    </a>
                </li>
            </ul>
        </nav>
        <div class="cd-overlay"></div>

        <!-- Javascripts -->
        <script src="assets/plugins/jquery/jquery-2.1.4.min.js"></script>
        <script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
        <script src="assets/plugins/pace-master/pace.min.js"></script>
        <script src="assets/plugins/jquery-blockui/jquery.blockui.js"></script>
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <script src="assets/plugins/switchery/switchery.min.js"></script>
        <script src="assets/plugins/uniform/jquery.uniform.min.js"></script>
        <script src="assets/plugins/offcanvasmenueffects/js/classie.js"></script>
        <script src="assets/plugins/offcanvasmenueffects/js/main.js"></script>
        <script src="assets/plugins/waves/waves.min.js"></script>
        <script src="assets/plugins/3d-bold-navigation/js/main.js"></script>
        <script src="assets/plugins/waypoints/jquery.waypoints.min.js"></script>
        <script src="assets/plugins/jquery-counterup/jquery.counterup.min.js"></script>
        <script src="assets/plugins/toastr/toastr.min.js"></script>
        <script src="assets/plugins/flot/jquery.flot.min.js"></script>
        <script src="assets/plugins/flot/jquery.flot.time.min.js"></script>
        <script src="assets/plugins/flot/jquery.flot.symbol.min.js"></script>
        <script src="assets/plugins/flot/jquery.flot.resize.min.js"></script>
        <script src="assets/plugins/flot/jquery.flot.tooltip.min.js"></script>
        <script src="assets/plugins/curvedlines/curvedLines.js"></script>
        <script src="assets/plugins/metrojs/MetroJs.min.js"></script>
        <script src="assets/js/modern.js"></script>
        <script src="assets/js/pages/dashboard.js"></script>
        <script src="https://vithalreddy.github.io/editable-html-table-js/bootstable.min.js"></script>
     <script>
        $('#DyanmicTable').SetEditable({$addButton: $('#addNewRow')});
    </script>
    </body>

<!-- Mirrored from phantom-themes.com/modern/Source/admin1/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:12:43 GMT -->
</html>