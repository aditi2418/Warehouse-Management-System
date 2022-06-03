<%-- 
    Document   : import-data-form
    Created on : 17 Oct, 2021, 3:41:59 PM
    Author     : 91934
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<!-- Mirrored from phantom-themes.com/modern/Source/admin1/form-elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:17:45 GMT -->
<head>
        
        <!-- Title -->
        <title>Modern | Forms - Form Elements</title>
        
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
        <link href="assets/plugins/summernote-master/summernote.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/bootstrap-colorpicker/css/colorpicker.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/bootstrap-tagsinput/bootstrap-tagsinput.css" rel="stylesheet" type="text/css"/>
        <link href="assets/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css"/>
        
        <!-- Theme Styles -->
        <link href="assets/css/modern.css" rel="stylesheet" type="text/css"/>
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
        
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
        crossorigin="anonymous">-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.min.css"
        crossorigin="anonymous">
        <link href="assets/input/fileinput.css" media="all" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" crossorigin="anonymous">
        <link href="assets/input/theme.css" media="all" rel="stylesheet" type="text/css" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
        <script src="assets/input/piexif.js" type="text/javascript"></script>
        <script src="assets/input/sortable.js" type="text/javascript"></script>
        
    </head>
    <body class="page-header-fixed">
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="assets/input/fileinput.js" type="text/javascript"></script>
        <script src="assets/input/fr.js" type="text/javascript"></script>
        <script src="assets/input/es.js" type="text/javascript"></script>
        <script src="assets/input/theme1.js" type="text/javascript"></script>
        <script src="assets/input/theme2.js" type="text/javascript"></script>
        
        <main class="page-content content-wrap">
            
            <div class="page-inner">
                <div class="page-title">
                    <h3>New Purchase</h3>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="index-2.html">Home</a></li>
                            <li><a href="#">Purchase</a></li>
                            <li class="active">Import Purchase</li>
                            <li class="active">New Purchase</li>
                        </ol>
                    </div>
                </div>
                <div id="main-wrapper">
                    <div class="row">
                        
                                
                        
                        <div class="col-md-12">
                            <div class="panel panel-white">
                                <div class="panel-heading clearfix">
                                    <h4 class="panel-title">New Purchase</h4>
                                </div>
                                <div class="panel-body">
                                    <form class="form-horizontal">
                                        
					<div class="form-group">
                                            <label class="col-sm-2 control-label">Date</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control date-picker">
                                            </div>
                                        </div>

					<div class="form-group">
                                            <label for="input-placeholder" class="col-sm-2 control-label">Party Name</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="input-placeholder" placeholder="placeholder">
                                            </div>
                                        </div> 
					
                                        
                                                            
					<div class="form-group">
                                            <label class="col-sm-2 control-label">Material Name</label>
                                            <div class="col-sm-10">
                                                <select  name="material" class="form-control m-b-sm" required>
                                                                <option value="">Select Material Name</option>
                                                            <% 
                                                                
                                                                Statement st=null;
                                                                DBConnector db=new DBConnector();
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
					</div>
					    <div class="form-group">
                                            <label class="col-sm-2 control-label">Select</label>
                                            <div class="col-sm-10">
                                                <select class="form-control m-b-sm">
                                                    <option>Select Payment Status</option>
                                                    <option>Paid</option>
                                                    <option>Unpaid</option>
                                                    
                                                </select>
                                            </div>
					</div>
					<div class="form-group">
                                            <label class="col-sm-2 control-label">Select</label>
                                            <div class="col-sm-10">
                                                <select class="form-control m-b-sm">
                                                    <option value="">Select Refer Point</option>
                                                            <% 
                                                                
                                                            try
                                                            {

                                                             String query="select * from warehouse";
                                                             ResultSet rs=st.executeQuery(query);
                                                             while(rs.next())
                                                             { %>
                                                              <option value="<%out.print(rs.getString("warehouse_name"));%>"><%out.print(rs.getString("warehouse_name"));%></option>
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
					</div>

					

					<div class="form-group">
                                            <label for="input-placeholder" class="col-sm-2 control-label">Rate</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="input-placeholder" placeholder="placeholder">
                                            </div>
                                        </div> 


					<div class="form-group">
                                            <label for="input-placeholder" class="col-sm-2 control-label">Agent</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="input-placeholder" placeholder="placeholder">
                                            </div>
                                        </div> 

					<div class="form-group">
                                            <label for="input-placeholder" class="col-sm-2 control-label">Terms Of Delivery</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="input-placeholder" placeholder="placeholder">
                                            </div>
                                        </div> 
                                              
                                                <div class="form-group">
                                            <label for="input-placeholder" class="col-sm-2 control-label">Bill One</label>
                                            <div class="col-sm-10">
                                                <div class="file-loading"> 
    <input id="input-b6a" name="input-b6a[]" type="file" multiple>
</div>
                                            </div>
                                        </div> 
                                                
                                        <label for="input-6a">Large Input Group</label>
<div class="file-loading"> 
    <input id="input-b6a" name="input-b6a[]" type="file" multiple>
</div>
<br>
<label for="input-6b">Small Input Group</label>
<div class="file-loading"> 
    <input id="input-b6b" name="input-b6b[]" type="file" multiple>
</div>
<script>
$(document).ready(function() {
    $("#input-b6a").fileinput({
        showUpload: false,
        dropZoneEnabled: false,
        maxFileCount: 10,
        inputGroupClass: "input-group-lg"
    });
    $("#input-b6b").fileinput({
        showUpload: false,
        dropZoneEnabled: false,
        maxFileCount: 10,
        inputGroupClass: "input-group-sm"
    });
});
</script>
                                            

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div><!-- Row -->
                </div><!-- Main Wrapper -->
                
            </div><!-- Page Inner -->
        </main><!-- Page Content -->
        
	

        
        
    </body>

<!-- Mirrored from phantom-themes.com/modern/Source/admin1/form-elements.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:17:52 GMT -->
</html>
