<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html>
    
<!-- Mirrored from phantom-themes.com/modern/Source/admin1/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:11:45 GMT -->
<head>
        
        <!-- Title -->
        <title>Transaction Details</title>
        
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
  color: white;
}
button {
  height: 3em;
  width: auto;
  padding: 0.9em auto;
  margin: 1em auto;
  background-color:#22baa0;
  border: none;
  border-radius: 3px;
  text-transform: uppercase;
  transition: all 0.2s cubic-bezier(.4,0,.2,1);
 
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
                    <h3>Transaction History</h3>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="index-2.html">Home</a></li>
                            <li class="active">Transaction History</li>
                        </ol>
                    </div>
                </div>
                


 <br><br>
                <center><b><u><h1 style="display:inline; margin-top: 3%;">WAREHOUSE</b></u></h1><button id="sale" style="float:right; display:inline; margin-right: 6%;"> DETAILS </button><center>
                
                
                
                <div class="col-25">
        <label for="filter">Filter</label>
      </div>
     <form action="transaction.jsp"> <div class="col-75">
          <select id="filter" name="transactions" autofocus>
          <option value="alltransactions" selected>All Transactions</option>
          <option value="sale">sale</option>
          <option value="transfer">Transfer</option>
          <option value="importpurchase">Import Purchase</option>
          <option value="domesticpurchase">Domestic Purchase</option>
        </select>
         </div><button style="border: none;"><i class="fa fa-search" aria-hidden="true"></i></button></form>
    </div>     
        <div class="w3-container">
  <table class="w3-table-all w3-hoverable" style="width:90%; margin:2%;">
      <tr style="background-color:#22baa0;">
        <th>Date</th>
        <th>Quantity</th>
        <th>Material</th>
        <th>Party Name</th>
        <th>Warehouse</th>
        <th>Mode</th>
        <th>Sold By</th>
      </tr>
                
                        <tr>
                            <td><%out.println(rs.getString("Date"));%></td>
                            <td><%out.println(rs.getString("Quantity"));%></td>
                            <td><%out.println(rs.getString("Material_Name"));%></td>
                            <td><%out.println(rs.getString("Party_Name"));%></td>
                            <td><%out.println(rs.getString("Warehouse"));%></td>
                            <td><%out.println(rs.getString("Mode"));%></td>
                            <td><%out.println(rs.getString("SoldBy"));%></td>
                        </tr> 
                    </tbody>
        <%
        }
       }
             if(choice.equals("sale"))
             {
         String query="select * from transactions where Mode='sale'";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                        <tr>
                            <td><%out.println(rs.getString("Date"));%></td>
                            <td><%out.println(rs.getString("Quantity"));%></td>
                            <td><%out.println(rs.getString("Material_Name"));%></td>
                            <td><%out.println(rs.getString("Party_Name"));%></td>
                            <td><%out.println(rs.getString("Warehouse"));%></td>
                            <td><%out.println(rs.getString("Mode"));%></td>
                            <td><%out.println(rs.getString("SoldBy"));%></td>
                        </tr> 
                    </tbody>
        <%
        }
       }
             
             if(choice.equals("transfer"))
             {
         String query="select * from transactions where Mode='transfer'";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                        <tr>
                            <td><%out.println(rs.getString("Date"));%></td>
                            <td><%out.println(rs.getString("Quantity"));%></td>
                            <td><%out.println(rs.getString("Material_Name"));%></td>
                            <td><%out.println(rs.getString("Party_Name"));%></td>
                            <td><%out.println(rs.getString("Warehouse"));%></td>
                            <td><%out.println(rs.getString("Mode"));%></td>
                            <td><%out.println(rs.getString("SoldBy"));%></td>
                        </tr> 
                    </tbody>
        <%
        }
       }

             if(choice.equals("importpurchase"))
             {
         String query="select * from transactions where Mode='importpurchase'";
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

             if(choice.equals("domesticpurchase"))
             {
         String query="select * from transactions where Mode='domestic purchase'";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                        <tr>
                            <td><%out.println(rs.getString("Date"));%></td>
                            <td><%out.println(rs.getString("Quantity"));%></td>
                            <td><%out.println(rs.getString("Material_Name"));%></td>
                            <td><%out.println(rs.getString("Party_Name"));%></td>
                            <td><%out.println(rs.getString("Warehouse"));%></td>
                            <td><%out.println(rs.getString("Mode"));%></td>
                            <td><%out.println(rs.getString("SoldBy"));%></td>
                        </tr> 
                    </tbody>
        <%
        }
       }

        }
            else
        {
         String query="select * from transactions";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                        <tr>
                            <td><%out.println(rs.getString("Date"));%></td>
                            <td><%out.println(rs.getString("Quantity"));%></td>
                            <td><%out.println(rs.getString("Material_Name"));%></td>
                            <td><%out.println(rs.getString("Party_Name"));%></td>
                            <td><%out.println(rs.getString("Warehouse"));%></td>
                            <td><%out.println(rs.getString("Mode"));%></td>
                            <td><%out.println(rs.getString("SoldBy"));%></td>
                        </tr> 
                    </tbody>
        
                
                
                

  </table>
</div>


                
                

                        
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
                    <a href="index.html">
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