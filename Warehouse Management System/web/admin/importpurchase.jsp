<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>





<!DOCTYPE html>
<html>

    <!-- Mirrored from phantom-themes.com/modern/Source/admin1/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:11:45 GMT -->
    <head>

        <!-- Title -->
        <title>Purchase</title>

        
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta charset="UTF-8">
        <meta name="description" content="Admin Dashboard Template" />
        <meta name="keywords" content="admin,dashboard" />
        <meta name="author" content="Steelcoders" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

        <!-- Styles -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css'>
        <link href="assets/plugins/pace-master/themes/blue/pace-theme-flash.css" rel="stylesheet"/>
        <link href="assets/plugins/uniform/css/uniform.default.min.css" rel="stylesheet"/>
        
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

<link rel="stylesheet" href="./style.css">

<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.3/animate.min.css'>
<link rel="stylesheet" href="./style1.css">


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
  width: 80%;
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
  width: 20%;
  padding: 1.5em auto;
  margin: 1em auto;
  background-color: #43BFC7;
  border: none;
  border-radius: 3px;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  transition: all 0.2s cubic-bezier(.4,0,.2,1);
  
 
}

.row{
  margin-left: 5%;
  margin-right: -8%;
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
        
 
input,select,textarea{
    margin-left: 124px;
}

        
        
        

    </style>
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
                        <a href="home.html" class="logo-text"><span>Modern</span></a>
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
                                    <a href="login.html" class="log-out waves-effect waves-button waves-classic">
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
                        <li><a href="index.html" class="waves-effect waves-button"><span><i class="fa fa-sign-out" style="font-size:29px"></i></span><p>Log Out</p></a></li>
                        
                </div><!-- Page Sidebar Inner -->
            </div><!-- Page Sidebar -->
            <div class="page-inner">
                <div class="page-title">
                    <h3>Import Purchase</h3>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="home.html">Home</a></li>
                            <li class="active">Purchase</li>
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
                            <th class="text-center" style="border: 1px solid black;">Refer Point</th>
                            <th class="text-center" style="border: 1px solid black;">Payment</th>
                            <th class="text-center" style="border: 1px solid black;">Documents</th>
                            <td style="padding:0px; border: 1px solid black;"><button style="text-align: right; margin:0%; padding:5px,5px; font-size: 13px" id="addNewRow" class="btn btn-primary btn-lg btn-modal" data-toggle="modal" data-target="#myModal" data-tab="register"><big>+</big>New Purchase</button>
                                </td>
                        </tr>
                    </thead>
                    
                    <%
        Statement st=null;
        DBConnector db=new DBConnector();
        st=db.getStatement();
        try
        {
         String query="select * from import";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
      
                    <tbody style="border: 1px solid black;">
                       <tr data-id="1">
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("party_name"));%></td>
                            <td data-field="birthday" style="border: 1px solid black;"><%out.println(rs.getString("material_name"));%></td>
                            <td data-field="age" style="border: 1px solid black;"><%out.println(rs.getString("refer_point"));%></td>
                            <td data-field="name" style="border: 1px solid black;"><%out.println(rs.getString("payment"));%></td>
                            <td style="border: 1px solid black;">
                                <button ><big style="font-size:12px;">+ Add Document</big> <i style="font-size:12px;" class="fas fa-folder-open" aria-hidden="true"></i></button>
                            </td>
                            
                            
                            <td name="buttons" style="border: 1px solid black;"><div class="btn-group pull-right"><button id="bEdit" type="button" class="btn btn-sm btn-default" onclick="rowEdit(this);"><span class="glyphicon glyphicon-pencil"> </span></button><button id="bElim" type="button" class="btn btn-sm btn-default" onclick="rowElim(this);"><span class="glyphicon glyphicon-trash"> </span></button><button id="bAcep" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowAcep(this);"><span class="glyphicon glyphicon-ok"> </span></button><button id="bCanc" type="button" class="btn btn-sm btn-default" style="display:none;" onclick="rowCancel(this);"><span class="glyphicon glyphicon-remove"> </span></button></div></td>
                        </tr>
                    </tbody>
        <%
        }
       }
        catch(Exception e)
        {
            System.out.println(e);
        }
        %>
                           
                </table>
            </div>
        </div>
    </div>

                </center>


<!--

            </div><!-- Main Wrapper -->

<!--Pop-up Modal-->

    <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content" >
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><a href="./importpurchase.html"><span aria-hidden="true">&times;</span></a></button>
      
      <!-- Nav tabs -->
      <ul class="nav nav-tabs" role="tablist" hidden="">
       
        <li role="presentation"><a href="#register" aria-controls="register" role="tab" data-toggle="tab" hidden></a></li>
      </ul>

      <!-- Tab panes -->
      <div class="tab-content">
        
        <div role="tabpanel" class="tab-pane fade" id="register">
          
          <div class="modal-body" >
                                
<form style="border:1px solid black">
      
      
      
      
     <div class="row" style="margin-top:2%;">
      <div class="col-25">
          <label  for="pname" >Party Name:</label>
      </div>
      <div class="col-75">
        <input type="text" id="pname" name="partyname" placeholder="Party name.." style="margin-left:5%;">
      </div>
    </div>
      
      <div class="row">
      <div class="col-25">
        <label for="material">Material Name:</label>
      </div>
      <div class="col-75">
        <select id="material" name="material" style="margin-left:5%;">
          <option value="PVCResin">PVCResin</option>
          <option value="PVCRegrind">PVCRegrind</option>
          <option value="PVCPulver">PVCPulver</option>
        </select>
      </div>
    </div>
      
      
      <div class="row">
      <div class="col-25">
        <label for="payment">Payment:</label>
      </div>
      <div class="col-75">
        <select id="payment" name="payment" style="margin-left:5%;">
          <option value="Paid">Paid</option>
          <option value="Unpaid">Unpaid</option>
        </select>
      </div>
    </div>
      
       <div class="row">
      <div class="col-25">
        <label for="referpoint">Refer Point:</label>
      </div>
      <div class="col-75">
        <select id="referpoint" name="referpoint" style="margin-left:5%;">
          <option value="bhiwandi">Bhiwandi</option>
       <option value="indore">Imdore</option>
        <option value="dewas">Dewas</option>
         <option value="bhiwandi">Bhiwandi</option>
          <option value="bhiwandi">Bhiwandi</option>
           <option value="bhiwandi">Bhiwandi</option>
        </select>
      </div>
    </div>
      
    
      
      <div class="row">
      <div class="col-25">
        <label for="rate">Rate:</label>
      </div>
      <div class="col-75">
        <input type="text" id="rate" name="rate" placeholder="Rate..." style="margin-left:5%;">
      </div>
    </div>
      
      <div class="row">
      <div class="col-25">
        <label for="agent">Agent:</label>
      </div>
      <div class="col-75">
        <input type="text" id="agent" name="agent" placeholder="Agent Name..." style="margin-left:5%;">
      </div>
    </div>
      
  <div class="row">
      <div class="col-25">
        <label for="termsofdelivery">Terms Of Delivery:</label>
      </div>
      <div class="col-75">
        <input type="text" id="termsofdelivery" name="termsofdelivery" placeholder="Terms of Delivery..." style="margin-left:5%;">
      </div>
    </div>
      
    <div class="row">
      <div class="col-25">
        <label for="ewaybill">E-Way Bill:</label>
      </div>
        <div class="col-75">
        <input type="file" id="ewaybill" name="ewaybill" style="margin-top:10px; margin-left:5%;">
      </div>
    </div>
      
    <div class="row">
      <div class="col-25">
        <label for="billofentry">Bill Of Entry:</label>
      </div>
        <div class="col-75">
        <input type="file" id="ewaybill" name="billofentry" style="margin-top:10px; margin-left:5%;">
      </div>
    </div>
      
    <div class="row">
      <div class="col-25">
        <label for="weightslip">Weight Slip:</label>
      </div>
        <div class="col-75">
        <input type="file" id="weightslip" name="weightslip" style="margin-top:10px; margin-left:5%;">
      </div>
    </div>
      
      
      <br>
        <br>
        <center><button class="button-7" ><b>Purchase</b></button></center>
      
      
      
</form>  
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
  

<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.0.7/parsley.js'></script><script  src="./script.js"></script>

<!--Pop-up Modal-->

        </div><!-- Page Inner -->
    </main><!-- Page Content -->
  <nav class="cd-nav-container" id="cd-nav">
            <header>
                <h3>Navigation</h3>
                <a href="#0" class="cd-close-nav">Close</a>
                      <header>
                <h3>Navigation</h3>
                <a href="#0" class="cd-close-nav">Close</a>
            </header>
            <ul class="cd-nav list-unstyled">
                <li class="cd-selected" data-menu="index">
                    <a href="javsacript:void(0);">
                        <span>
                            <i class="fa fa-briefcase" style="font-size:50px"></i>
                        </span>
                        <p>Sale</p>
                    </a>
                </li>
                <li data-menu="sale">
                    <a href="javsacript:void(0);">
                        <span>
                        <i class="fa fa-truck" style="font-size:50px;"></i>
                        </span>
                        <p>Transfer</p>
                    </a>
                </li>
                
                <li data-menu="#">
                    <a href="javsacript:void(0);">
                        <span>
                            <i class="fa fa-exchange fa-1x" aria-hidden="true"></i>
                        </span>
                        <p>Transaction</p>
                    </a>
                </li>
                <li data-menu="#">
                    <a href="javsacript:void(0);">
                        <span>
                            <i class="fa fa-reorder" style="font-size:50px"></i>
                        </span>
                        <p>Items</p>
                    </a>
                </li>
                <li data-menu="calendar">
                    <a href="javsacript:void(0);">
                        <span class="menu-icon glyphicon glyphicon-home">
                     </span>
                        <p>Warehouse</p>
                    </a>
                </li>
                 <li data-menu="transfer">
                    <a href="javsacript:void(0);">
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
      
          <script src="https://vithalreddy.github.io/editable-html-table-js/bootstable.min.js"></script>
    
    <script>
        $('#DyanmicTable').SetEditable({$addButton: $('#addNewRow')});
    </script>

    </body>

<!-- Mirrored from phantom-themes.com/modern/Source/admin1/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:12:43 GMT -->
</html>




