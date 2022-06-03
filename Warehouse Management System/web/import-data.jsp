<%-- 
    Document   : import-data
    Created on : 17 Oct, 2021, 12:31:51 PM
    Author     : 91934
--%>

<%@page import="java.util.StringTokenizer"%>
<%@page import="java.util.ArrayList"%>
<%-- 
    Document   : sale-data
    Created on : 16 Oct, 2021, 11:31:40 PM
    Author     : 91934
--%>

<%@page import="java.sql.SQLException"%>
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
        <title>Import-Acron International</title>
        
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
        <!--Add More Materials Hehe-->
        <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="  crossorigin="anonymous"></script>
<script>
$(document).ready(function() {
    var wrapper         = $(".myFields"); 
    $(add_button).click(function(e){ 
        e.preventDefault();
            $(wrapper).append('<div class="form-group"><h3>Add More Materials</h3><select id="material-input" name="m" class="form-control" placeholder="Material Name" style="color: #a4a4a4" required><option value="">- - Material Name - -</option><% Statement sto=null; DBConnector dbo=new DBConnector(); sto=dbo.getStatement(); try { String queryo="select * from items"; ResultSet rso=sto.executeQuery(queryo); while(rso.next()) { %> <option value="<%out.print(rso.getString("Material_Name"));%>"><%out.print(rso.getString("Material_Name"));%></option> <% } } catch(SQLException e) { System.out.println(e); } %> </select> <br><input type="text" name="q" id="quantity-input" class="form-control" placeholder="Quantity" required><br><input type="text" name="r" id="rate-input" class="form-control" placeholder="Rate" required><br><a href="#"	class="btn btn-danger btn-sm delFld"><span class="fas fa-trash-alt"></span>Delete</a></div>'); //add input box
    });
    
    $(wrapper).on("click",".delFld", function(e){ 
        e.preventDefault(); $(this).parent('div').remove();
    })
});
</script>

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
                        <li ><a href="home.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-home"></span><p>Dashboard</p></a></li>
                        <li><a href="sale-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-briefcase"></span><p>Sale</p></a></li>
                        <li><a href="transfer-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-send"></span><p>Transfer</p></a></li>
                        
                         <li class="droplink"><a href="#" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-shopping-cart"></span><p>Purchase</p><span class="arrow"></span></a>
                            <ul class="sub-menu">
                                <li class="active"><a href="import-data.jsp">Import</a></li>
                                <li><a href="domestic-data.jsp">Domestic</a></li>
                                
                            </ul>
                        </li>
                     <li><a href="table-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-sort"></span><p>Transaction</p></a></li>
                        <li><a href="item-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th-list"></span><p>Item</p></a></li>
                        <li><a href="warehouse.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th"></span><p>Warehouse</p></a></li>
                        <li><a href="party-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th-large"></span><p>Party</p></a></li>
                        <li><a href="LogOutAuthenticator" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-log-out"></span><p>Log Out</p></a></li>
                        
                        
   
                </div><!-- Page Sidebar Inner -->
            </div><!-- Page Sidebar -->
            






















<!-- Page Sidebar -->
            <div class="page-inner">
                <div class="page-title" style="margin-bottom: 0px;">
                    <h3><b>Import Purchase</b></h3>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="home.jsp">Home</a></li>
                            <li class="active">Purchase</li>
                            <li class="active">Import Purchase</li>
                        </ol>
                    </div>
                </div>
        
                <div id="main-wrapper">
                    <div class="row">
                        <div class="col-md-12">
                            
                            
                                
                            <div class="panel panel-white">
                                
                                <div class="panel-body">
                                    <button type="button" class="btn btn-success m-b-sm" data-toggle="modal" data-target="#myModal">New Purchase</button>
                                    <!-- Modal -->
                                                    <form id="add-row-form" action="ImportCheckerServlet" method="Post">
                                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel" style="font-weight: 800; font-size:1.5em; text-decoration: underline; ">New Purchase</h4>                                                </div>
                                                <div class="modal-body" style="margin-top: 3%;">
                                                    
                                                        
                                                        <div class="form-group">
                                                            <input type="date" name="date" id="date-input" class="form-control" placeholder="Select Date" required>
                                                        </div>
                                                    
                                                       
                                                    
                                                       
                                                    <select id="material-input" name="warehouse" class="form-control" placeholder="Material Name" style="color: #a4a4a4" required>
                                                                <option value="">- - Warehouse Name - -</option>
                                                            <% 
                                                                
                                                                Statement st=null;
                                                                DBConnector db=new DBConnector();
                                                                st=db.getStatement();

                                                                try
                                                            {

                                                             String query1="select * from warehouse where warehouse_name='dewas';";
                                                             ResultSet rs1=st.executeQuery(query1);
                                                             while(rs1.next())
                                                             { %>
                                                              <option value="<%out.print(rs1.getString("warehouse_name"));%>"><%out.print(rs1.getString("warehouse_name"));%></option>
                                                              <%
                                                               }
                                                            }
                                                               catch(SQLException e)
                                                                {
                                                                   System.out.println(e);
                                                                }
                                                              %>
                                                    </select><br>
                                                        <div class="form-group">
                                                            <select id="party-input" name="party" class="form-control" placeholder="Party Name" style="color: #a4a4a4" required>
                                                                <option value="">--Party Name--</option>
                                                            <% 
                                                                
                                                                st=null;
                                                                //DBConnector db=new DBConnector();
                                                                st=db.getStatement();

                                                                try
                                                            {

                                                             String query="select * from allparty";
                                                             ResultSet rs=st.executeQuery(query);
                                                             while(rs.next())
                                                             { %>
                                                              <option value="<%out.print(rs.getString("Party_Name"));%>"><%out.print(rs.getString("Party_Name"));%></option>
                                                              <%
                                                               }
                                                            }
                                                               catch(SQLException e)
                                                                {
                                                                   System.out.println(e);
                                                                }
                                                              %>
                                                            </select>
                                                        </div>
                                                        
                                                        
                                                         <div class="form-group">
                                                            <input type="text" name="quantity" id="quantity-input" class="form-control" placeholder="Quantity" required>
                                                        </div>
                                                             <div class="form-group">
                                                            
                                                            <select id="material-input" name="material" class="form-control" placeholder="Material Name" style="color: #a4a4a4" required>
                                                                <option value="">Material Name</option>
                                                            <% 
                                                                
                                                                st=null;
                                                                //DBConnector db=new DBConnector();
                                                                st=db.getStatement();

                                                                try
                                                            {

                                                             String query="select * from items";
                                                             ResultSet rs=st.executeQuery(query);
                                                             while(rs.next())
                                                             { %>
                                                              <option value="<%out.print(rs.getString("Material_Name"));%>"><%out.print(rs.getString("Material_Name"));%></option>
                                                              <%
                                                               }
                                                            }
                                                               catch(SQLException e)
                                                                {
                                                                   System.out.println(e);
                                                                }
                                                              %>
                                                            </select>
                                                        </div>    
                                                         <div class="form-group">
                                                            <input type="text" name="payment" id="transport-details-input" class="form-control" placeholder="Payment Status" required>
                                                        </div>    
                                                         <div class="form-group">
                                                            <input type="text" name="referpoint" id="transport-details-input" class="form-control" placeholder="refer point name" required>
                                                        </div>    
                                                        
                                                        <div class="form-group">
                                                            <input type="text" name="rate" id="rate-input" class="form-control" placeholder="Rate" required>
                                                        </div>
                                                         
                                                        <div class="form-group">
                                                            <input type="text" name="soldby" id="sold-by-input" class="form-control" placeholder="Sold By" required>
                                                        </div>   
                                                       
                                                            
                                                        <div class="form-group">
                                                            <input type="text" name="termsofdelivery" id="terms-of-delivery-input" class="form-control" placeholder="Terms Of Delivery" required>
                                                        </div>
                                                            
                                                        <div class="form-group">
                                                            <input type="text" name="invoiceno" id="invoice-id-input" class="form-control" placeholder="Invoice - No." >
                                                        </div> 
                                                       
                                                       <div class="myFields"></div>
                                                        <button type="button" id="add_button" class="btn btn-success" >Add More Materials</button>
                                                        
                                                        
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                                    <button type="submit"  class="btn btn-success">Submit</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                                    </form>
                                                            
                                                            <!-- Modal  -->
                                                    <form id="add-row-form1" action="UpdateImportServlet" method="Post">
                                    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                    <h4 class="modal-title" id="myModalLabel" style="font-weight: 800; font-size:1.5em; text-decoration: underline; ">Update Entry</h4>                                                </div>
                                                <div class="modal-body" style="margin-top: 3%;">
                                                    
                                                       
                                                    <div class="form-group">
                                                            <select id="sale-id-input" name="importid" class="form-control" placeholder="Import ID" style="color: #a4a4a4" required>
                                                                <option value="">Import ID</option>
                                                            <% 
                                                                
                                                                
                                                                st=db.getStatement();

                                                                try
                                                            {

                                                             String query="select * from import";
                                                             ResultSet rs=st.executeQuery(query);
                                                             while(rs.next())
                                                             { %>
                                                              <option value="<%out.print(rs.getInt("import_id"));%>"><%out.print(rs.getInt("import_id"));%></option>
                                                              <%
                                                               }
                                                            }
                                                               catch(SQLException e)
                                                                {
                                                                   System.out.println(e);
                                                                }
                                                              %>
                                                            </select>
                                                        </div>
                                                            
                                                    
                                                        <div class="form-group">
                                                            <select id="party-input" name="partyname" class="form-control" placeholder="New Party Name" style="color: #a4a4a4" required>
                                                                <option value="">--New Party Name--</option>
                                                            <% 
                                                                
                                                                st=null;
                                                                //DBConnector db=new DBConnector();
                                                                st=db.getStatement();

                                                                try
                                                            {

                                                             String query="select * from allparty";
                                                             ResultSet rs=st.executeQuery(query);
                                                             while(rs.next())
                                                             { %>
                                                              <option value="<%out.print(rs.getString("Party_Name"));%>"><%out.print(rs.getString("Party_Name"));%></option>
                                                              <%
                                                               }
                                                            }
                                                               catch(SQLException e)
                                                                {
                                                                   System.out.println(e);
                                                                }
                                                              %>
                                                            </select>
                                                        </div>
                                                        
                                                        <div class="form-group">
                                                            <input type="text" name="payment" id="quantity-input" class="form-control" placeholder="New Payment Status" required>
                                                        </div>
                                                            
                                                        
                                                        
                                                        <div class="form-group">
                                                            <input type="text" name="newquantity" id="quantity-input" class="form-control" placeholder="New Quantity" required>
                                                        </div>
                                                            
                                                        
                                                        
                                                        
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                                                    <button type="submit"  class="btn btn-success">Update</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                                    </form>
                                   
                                                            
                                                            
                                    <div class="table-responsive">
                                        <table id="example3" class="display table" style="width: 100%; cellspacing: 0;">
                                            <thead>
                                            <tr>
                                                <th>Date</th>
                                                <th>Import ID</th>
                                                <th>Party Name</th>
                                                <th>Material Name</th>
                                                <th>Quantity</th>
                                                <th>Refer Point</th>
                                                <th>Payment Status</th>
                                                <th>Add Document</th>
                                                <th>Edit/Delete</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th>Date</th>
                                                <th>Import ID</th>
                                                <th>Party Name</th>
                                                <th>Material Name</th>
                                                <th>Quantity</th>
                                                <th>Refer Point</th>
                                                <th>Payment Status</th>
                                                <th>Add Document</th>
                                                <th>Edit/Delete</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            <%
                    
                  
        
        try
        {
         
                                                                st=db.getStatement();
                                                                
         String query="select * from import where warehouse_name='dewas';";
         ResultSet rs=st.executeQuery(query);
         while(rs.next())
         {
        %>
                                            <tr>
                                                <td><%out.println(rs.getString("date"));%></td>
                                                <td><%out.println(rs.getInt("import_id"));%></td>
                                                <td><%out.println(rs.getString("party_name"));%></td>
                                                <%String tok=rs.getString("Material_Name");
                                                 ArrayList<String> ar=new ArrayList<String>();
                                                 StringTokenizer stt=new StringTokenizer(tok,",");
                                                 while(stt.hasMoreTokens())
                                                 {
                                                     ar.add(stt.nextToken());
                                                 }
                                                %>
                                                <td><%for(String e: ar)
                                                {
                                                    %><li style="list-style-type:none;"><%out.println(e);  %></li><%
                                                }
                                                %></td>
                                                
                                                <%String qua=rs.getString("Quantity");
                                                 ArrayList<String> qr=new ArrayList<String>();
                                                 StringTokenizer qtt=new StringTokenizer(qua,",");
                                                 while(qtt.hasMoreTokens())
                                                 {
                                                     qr.add(qtt.nextToken());
                                                 }
                                                %>
                                                <td><%for(String q: qr)
                                                {
                                                    %><li style="list-style-type:none;"><%out.println(q);  %></li><%
                                                }
                                                %></td>
                                        <td><%out.println(rs.getString("refer_point"));%></td>
                                                <td><%out.println(rs.getString("payment"));%></td>
                                                <td><a href='add-document.jsp?id=<%out.println(rs.getInt("import_id"));%>&mode=import'><button ><big style="font-size:12px;">+ Add Document</big> <span class="glyphicon glyphicon-file"></span></button></a>
                                                </td>
                                               <td>
                                                    <a class="btn btn-sm btn-default" title="Edit" href="Updateimport.jsp?id=<%out.println(rs.getInt("import_id"));%>">
                                                      <i class="glyphicon glyphicon-pencil"></i>
                                                    </a>

                                                    <a class="btn btn-sm btn-default" title="Delete" onclick="return yes_js_login();" href="ImportDeleteServlet?importid=<%out.print(rs.getInt("import_id"));%>&quantity=<%out.print(rs.getString("quantity"));%>&material=<%out.print(rs.getString("material_name"));%>&warehouse=<%out.print(rs.getString("warehouse_name"));%>">
                                                      <i class="glyphicon glyphicon-trash"></i>
                                                    </a>
                                                </td>
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
                    <p class="no-s">2021 &copy; All rights reserved to Acron International.</p>
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
                    <a href="table-data.jsp">
                        <span class="menu-icon glyphicon glyphicon-sort">
                       </span>
                        <p>Transaction</p>
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
	
         <script>
            yes_js_login = function() {
            if (confirm('Are you sure you want to Delete this?')) {
            // Save it!
            return true;
            } else {
              // Do nothing!
              return false;
            }
            }
        </script>
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