<%@page import="java.util.ArrayList"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    
<!-- Mirrored from phantom-themes.com/modern/Source/admin1/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:11:45 GMT -->
<head>
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
  width: 40%;
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
  width: 15%;
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
  background-color: #ffffff;
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
        <!-- Title -->
        <title>Modern | Admin Dashboard Template</title>
        
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta charset="UTF-8">
        <meta name="description" content="Admin Dashboard Template" />
        <meta name="keywords" content="admin,dashboard" />
        <meta name="author" content="Steelcoders" />
        
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
        
    </head>
    <body class="page-header-fixed">
        <div class="overlay"></div>
        <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s1">
            <h3><span class="pull-left">Chat</span><a href="javascript:void(0);" class="pull-right" id="closeRight"><i class="fa fa-times"></i></a></h3>
            <div class="slimscroll">
                <a href="javascript:void(0);" class="showRight2"><img src="assets/images/avatar2.png" alt=""><span>Sandra smith<small>Hi! How're you?</small></span></a>
                <a href="javascript:void(0);" class="showRight2"><img src="assets/images/avatar3.png" alt=""><span>Amily Lee<small>Hi! How're you?</small></span></a>
                <a href="javascript:void(0);" class="showRight2"><img src="assets/images/avatar4.png" alt=""><span>Christopher Palmer<small>Hi! How're you?</small></span></a>
                <a href="javascript:void(0);" class="showRight2"><img src="assets/images/avatar5.png" alt=""><span>Nick Doe<small>Hi! How're you?</small></span></a>
                <a href="javascript:void(0);" class="showRight2"><img src="assets/images/avatar2.png" alt=""><span>Sandra smith<small>Hi! How're you?</small></span></a>
                <a href="javascript:void(0);" class="showRight2"><img src="assets/images/avatar3.png" alt=""><span>Amily Lee<small>Hi! How're you?</small></span></a>
                <a href="javascript:void(0);" class="showRight2"><img src="assets/images/avatar4.png" alt=""><span>Christopher Palmer<small>Hi! How're you?</small></span></a>
                <a href="javascript:void(0);" class="showRight2"><img src="assets/images/avatar5.png" alt=""><span>Nick Doe<small>Hi! How're you?</small></span></a>
            </div>
		</nav>
        <nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
           
           
           
        </nav>

        <div class="menu-wrap">
            <nav class="profile-menu">
                <div class="profile"><img src="assets/images/profile-menu-image.png" width="60" alt="David Green"/><span>David Green</span></div>
                <div class="profile-menu-list">
              <a href="#"><i class="fa fa-envelope"></i><span>Messages</span></a>
                    <a href="#"><i class="fa fa-comment"></i><span>Comments</span></a>
                </div>
            </nav>
            <button class="close-button" id="close-button">Close Menu</button>
        </div>
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
                        <a href="index-2.html" class="logo-text"><span>Modern</span></a>
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
                                            </ul >
                                   
                            <ul class="nav navbar-nav navbar-right">
                                <li>	
                                    <a href="javascript:void(0);" class="waves-effect waves-button waves-classic show-search"><i class="fa fa-search"></i></a>
                                </li>
                               
                                <li>
                                    <a href="LogOutAuthenticator" class="log-out waves-effect waves-button waves-classic">
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
                    <div class="sidebar-header">
                        <div class="sidebar-profile">
                            <a href="javascript:void(0);" id="profile-menu-link">
                                <div class="sidebar-profile-image">
                                    <img src="assets/images/profile-menu-image.png" class="img-circle img-responsive" alt="">
                                </div>
                                <div class="sidebar-profile-details">
                                    <span>David Green<br><small>Art Director</small></span>
                                </div>
                            </a>
                        </div>
                    </div>
                    <ul class="menu accordion-menu">
                          <li class="active"><a href="home.html" class="waves-effect waves-button"><span><i class="fa fa-university" style="font-size:29px"></i></span><p>Dashboard</p></a></li>
                        <li><a href="sale.html" class="waves-effect waves-button"><span ><i class="fa fa-briefcase" style="font-size:27px"></i></span><p>Sale</p></a></li>
                        <li><a href="transfer.html" class="waves-effect waves-button"><span ><i class="fa fa-truck" style="font-size:29px;"></i></span><p>Transfer</p></a></li>
                        
                         <li class="droplink"><a href="#" class="waves-effect waves-button"><span ><i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i></span><p>Purchase</p><span class="arrow"></span></a>
                            <ul class="sub-menu">
                                <li><a href="importpurchase.html">Import</a></li>
                                <li><a href="domesticpurchase.html">Domestic</a></li>
                                
                            </ul>
                        </li>
                     <li><a href="transaction.html" class="waves-effect waves-button"><span ><i class="fa fa-exchange fa-2x" aria-hidden="true"></i></span><p>Transaction</p></a></li>
                        <li><a href="item.html" class="waves-effect waves-button"><span ><i class="fa fa-reorder" style="font-size:29px"></i></span><p>Item</p></a></li>
                        <li><a href="warehouse.html" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-home"></span><p>Warehouse</p></a></li>
                        <li><a href="LogOutAuthenticator" class="waves-effect waves-button"><span><i class="fa fa-sign-out" style="font-size:29px"></i></span><p>Log Out</p></a></li>
                        
                          <li><a href="LogOutAuthenticator" class="waves-effect waves-button"><span><i class="fa fa-sign-out" style="font-size:29px"></i></span><p>Log Out</p></a></li>
                        
                </div><!-- Page Sidebar Inner -->
            </div><!-- Page Sidebar -->
            <div class="page-inner">
                <div class="page-title">
                    <h3>Sale</h3>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="index-2.html">Home</a></li>
                            <li><a href="home.html">Sale</a></li>
                        </ol>
                    </div>
                </div>
                
                
                
                
                <center>



                  
                
                
                <!-- partial:index.partial.html -->
    <div  style="width:90%; margin:auto;">

        <br>

        <div class="row" >
            <div class="table-responsive col-md-10" >
                <table class="table table-bordered table-striped table-hover table-condensed  text-center" id="editableTable"  style="text-align: center;">
                    <thead style="border: 1px solid black;">
                        <tr style="border: 1px solid black;">
                            <th class="text-center" style="border: 1px solid black;">Party Name</th>
                            <th class="text-center" style="border: 1px solid black;">Material Name</th>
                            <th class="text-center" style="border: 1px solid black;">Quantity</th>
                            <th class="text-center" style="border: 1px solid black;">Documents</th>
                            <td style="padding:0px; border: 1px solid black;"><button style="text-align: right;" id="addNewRow" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModalLong"><big>+</big>New Purchase</button>
                                </td>
                        </tr>
                    </thead>
        
                    <tbody style="border: 1px solid black;">
                        
                        
                    </tbody>
        
                </table>
            </div>
        </div>
    </div>

                </center>

<!--

            </div><!-- Main Wrapper -->

 <%
                    
        Statement st=null;
        DBConnector db=new DBConnector();
        st=db.getStatement();
                    
try
        {
         
         String query="select sum(sale.quantity),  sum(domestic.quantity), sum(transfer.Quantity) from sale,import,transfer,domestic";
         ResultSet rs1=st.executeQuery(query);
         ArrayList<String> list1 = new ArrayList<String>();
         int i=1;
         while(rs1.next())
         {
            list1.add(Float.toString(rs1.getFloat(i)));
            i++;
         }
         
         for(i = 0; i < list1.size(); i++)
         {
            System.out.println(list1.get(i));
         }
         rs1.close();
         
}
           catch(SQLException e)
            {
               System.out.println(e);
            }
                    %>  

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
  <form action="SaleCheckerServlet" method="Post">
      
      <div class="row">
      <div class="col-25">
        <label for="date">Date</label>
      </div>
      <div class="col-75">
        <input type="date" id="wname" name="date" placeholder="DD-MM-YY">
      </div>
    </div>
      
      <div class="row">
      <div class="col-25">
        <label for="wname">Warehouse Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="wname" name="wname" placeholder="Warehouse name..">
      </div>
    </div>
      
     <div class="row">
      <div class="col-25">
        <label for="pname">Party Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="pname" name="partyname" placeholder="Party name..">
      </div>
    </div>
      
      <div class="row">
      <div class="col-25">
        <label for="material">Material Name</label>
      </div>
      <div class="col-75">
        
      </div>
    </div>
      
       <div class="row">
      <div class="col-25">
        <label for="termsofdelivery">Terms Of Delivery</label>
      </div>
      <div class="col-75">
        <input type="text" id="termsofdelivery" name="termsofdelivery" placeholder="Terms of Delivery...">
      </div>
    </div>
      
      <div class="row">
      <div class="col-25">
        <label for="rate">Rate</label>
      </div>
      <div class="col-75">
        <input type="text" id="rate" name="rate" placeholder="Rate...">
      </div>
    </div>
      
      <div class="row">
      <div class="col-25">
        <label for="agent">Agent</label>
      </div>
      <div class="col-75">
        <input type="text" id="agent" name="agent" placeholder="Agent Name...">
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
        <label for="vehiclename">Vehicle Number</label>
      </div>
      <div class="col-75">
        <input type="text" id="vehiclenumber" name="vehiclenumber" placeholder="Enter Vehicle Number..">
      </div>
    </div>
      
       <div class="row">
      <div class="col-25">
        <label for="drivername">Driver Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="drivername" name="drivername" placeholder="Driver name..">
      </div>
    </div>
      
       <div class="row">
      <div class="col-25">
        <label for="drivercontact">Driver Contact</label>
      </div>
      <div class="col-75">
        <input type="text" id="drivercontact" name="drivercontact" placeholder="Driver Contact..">
      </div>
    </div>
      
       <div class="row">
      <div class="col-25">
        <label for="transportname">Transport Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="transportname" name="transportname" placeholder="Transport name..">
      </div>
    </div>
      
       <div class="row">
      <div class="col-25">
        <label for="transportdetails">Transport Details</label>
      </div>
      <div class="col-75">
        <input type="text" id="transportdetails" name="transportdetails" placeholder="Transport details..">
      </div>
    </div>
      
    
    <div class="row">
      <div class="col-25">
        <label for="soldby">Sold By</label>
      </div>
      <div class="col-75">
        <select id="soldby" name="soldby">
          <option value="John">John</option>
          <option value="Abcd">Abcd</option>
          <option value="other">Other</option>
        </select>
      </div>
    </div>
      
      <br>
        <br>
        <button class="button-7"><b>SALE</b></button>
      
      
      
      
      
</form>
                    
</div>  
                 
                    
                    
                </div>
                <div class="modal-footer">
                   
                </div>
            </div>
        </div>
    </div>

<!--Pop-up Modal-->







                
                        
                    </div><!-- Main Wrapper -->
        
        </main><!-- Page Content -->
        <nav class="cd-nav-container" id="cd-nav">
            </header>
            <ul class="cd-nav list-unstyled">
                <li class="cd-selected" data-menu="index">
                    <a href="sale.html">
                        <span>
                            <i class="fa fa-briefcase" style="font-size:50px"></i>
                        </span>
                        <p>Sale</p>
                    </a>
                </li>
                <li data-menu="sale">
                    <a href="transfer.html">
                        <span>
                        <i class="fa fa-truck" style="font-size:50px;"></i>
                        </span>
                        <p>Transfer</p>
                    </a>
                </li>
                
                <li data-menu="#">
                    <a href="transaction.html">
                        <span>
                            <i class="fa fa-exchange fa-1x" aria-hidden="true"></i>
                        </span>
                        <p>Transaction</p>
                    </a>
                </li>
                <li data-menu="#">
                    <a href="item.html">
                        <span>
                            <i class="fa fa-reorder" style="font-size:50px"></i>
                        </span>
                        <p>Items</p>
                    </a>
                </li>
                <li data-menu="calendar">
                    <a href="warehouse.html">
                        <span class="menu-icon glyphicon glyphicon-home">
                     </span>
                        <p>Warehouse</p>
                    </a>
                </li>
                 <li data-menu="transfer">
                    <a href="LogOutAuthenticator">
                        <span>
                        <i class="fa fa-sign-out" style="font-size:50px"></i>
                        </span>
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
        
    </body>

<!-- Mirrored from phantom-themes.com/modern/Source/admin1/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:12:43 GMT -->
</html>