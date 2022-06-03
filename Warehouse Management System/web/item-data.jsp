<%-- 
    Document   : table-data
    Created on : 16 Oct, 2021, 10:41:19 PM
    Author     : 91934
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<!-- Mirrored from phantom-themes.com/modern/Source/admin1/table-data.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:17:23 GMT -->
<head>
        <link rel="icon" href="icon5.png">  
        <!-- Title -->
        <title>Items-Acron International</title>
       
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
        <link href="assets/plugins/datatables/css/jquery.datatables.min.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/datatables/css/jquery.datatables_themeroller.css" rel="stylesheet" type="text/css"/>	
        <link href="assets/plugins/x-editable/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" type="text/css">
        <link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css"/>
        
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
         <% if(session.getAttribute("username")==null)
            {  
                response.sendRedirect("index.html");
            }
        %>
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
                         <a  class="logo-text"><img src="icon1.png" width="100"  height="30" /></a>
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
                    
                    <ul class="menu accordion-menu">
                        <li><a href="home.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-home"></span><p>Dashboard</p></a></li>
                        <li><a href="sale-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-briefcase"></span><p>Sale</p></a></li>
                        <li><a href="transfer-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-send"></span><p>Transfer</p></a></li>
                        
                         <li class="droplink"><a href="#" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-shopping-cart"></span><p>Purchase</p><span class="arrow"></span></a>
                            <ul class="sub-menu">
                              
                                <li><a href="domestic-data.jsp">Domestic</a></li>
                                
                            </ul>
                        </li>
                   
                        <li class="active"><a href="item-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th-list"></span><p>Item</p></a></li>
                        <li><a href="warehouse.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th"></span><p>Warehouse</p></a></li>
                        <li><a href="party-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th-large"></span><p>Party</p></a></li>
                        <li><a href="LogOutAuthenticator" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-log-out"></span><p>Log Out</p></a></li>
                        
                        
   
                </div><!-- Page Sidebar Inner -->
            </div><!-- Page Sidebar -->
            






















<!-- Page Sidebar -->
              <div class="page-inner">
                <div class="page-title" style="margin-bottom: 0px;">
                    <h3><b>Item</b></h3>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="home.jsp">Home</a></li>
                            <li class="active">Item</li>
                        </ol>
                    </div>
                </div> 
                <div id="main-wrapper">
                    <div class="row">
                        <div class="col-md-12">
                            
                            
                                
                            <div class="panel panel-white">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Add rows</h4>
                                </div>
                                <div class="panel-body">
                                    <button type="button" class="btn btn-success m-b-sm" data-toggle="modal" data-target="#myModal">Add New Material</button>
                                    <!-- Modal -->
                                    <form id="add-row-form" action="ItemCheckerServlet" method="post">
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel">Add Material</h4>
                                                </div>
                                                <div class="modal-body">
                                                        <div class="form-group">
                                                            <input name="material" type="text" id="material-name-input" class="form-control" placeholder="Material Name" required>
                                                        </div>
                                                    
                                                        <div class="form-group">
                                                           <input name="quantity" value=""<%out.print("0.0");%> type="text" id="quantity-input" class="form-control" placeholder="Quantity=0.0" readonly required>
                                                         </div>
                                                        
                                                        <div class="form-group">
                                                            <select name="color" class="form-control" required>
                                                                <option value="White">White</option>
                                                                <option value="Grey">Grey</option>
                                                                <option value="Blue">Blue</option>
                                                                <option value="Others">Others</option>
                                                                <option value="Resin">Resin/Off Grade</option>
                                                                <option value="Dead">Dead Stock</option>
                                                            </select>
                                                        </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                                    <button type="submit"  class="btn btn-success">Add</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                                    </form>
                                    <div class="table-responsive">
                                        <table id="example3" class="display table" style="width: 100%; cellspacing: 0;">
                                            <thead>
                                            <tr>
                                                <th>Material Name</th>
                                                <th>Quantity</th>
                                                <th>Color</th>
                                               
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Material Name</th>
                                                <th>Quantity</th>
                                                <th>Color</th>
                                                
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <%
                    
                  
        Statement st=null;
        DBConnector db=new DBConnector();
        st=db.getStatement();
        try
        {
         
         String query="select * from items";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                                            <tr>
                                                <td><%out.println(rs.getString("material_name"));%></td>
                                                <td><%out.println(rs.getString("stored_quantity"));%></td>
                                                <td><%out.println(rs.getString("color"));%></td>
                                                </tr> 
                                            <%
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
                                </div>
                            </div>
                        </div>
                    </div><!-- Row -->
                </div><!-- Main Wrapper -->
                <div class="page-footer">
                    <p class="no-s">2021 &copy; All rights reserved to Acron International</p>
                </div>
            </div><!-- Page Inner -->
        </main><!-- Page Content -->
         <nav class="cd-nav-container" id="cd-nav">
            <header>
                <h3>Navigation</h3>
                <a href="#0" class="cd-close-nav">Close</a>
            </header>
            <ul class="cd-nav list-unstyled">
                <li class="cd-selected" data-menu="index">
                    <a href="sale-data.jsp">
                        <span class="menu-icon glyphicon glyphicon-briefcase">
                       </span>
                        <p>Sale</p>
                    </a>
                </li>
                <li data-menu="sale">
                    <a href="transfer-data.jsp">
                        <span class="menu-icon glyphicon glyphicon-send">
                        </span>
                        <p>Transfer</p>
                    </a>
                </li>
                
              <li data-menu="#">
                     <a href="domestic-data.jsp">
                       <span class="menu-icon glyphicon glyphicon-shopping-cart">
                       </span>
                        <p>Purchase</p>
                    </a>
                </li>
                <li data-menu="#">
                    <a href="item-data.jsp">
                        <span class="menu-icon glyphicon glyphicon-th-list">
                       </span>
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
                    <a href="LogOutAuthenticator">
                        <span class="menu-icon glyphicon glyphicon-log-out">
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
        <script src="assets/plugins/jquery-mockjax-master/jquery.mockjax.js"></script>
        <script src="assets/plugins/moment/moment.js"></script>
        <script src="assets/plugins/datatables/js/jquery.datatables.min.js"></script>
        <script src="assets/plugins/x-editable/bootstrap3-editable/js/bootstrap-editable.js"></script>
        <script src="assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
        <script src="assets/js/modern.min.js"></script>
        <script src="assets/js/pages/table-data.js"></script>
        
    </body>

<!-- Mirrored from phantom-themes.com/modern/Source/admin1/table-data.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:17:45 GMT -->
</html>