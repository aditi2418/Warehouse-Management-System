    <%@page import="java.util.ArrayList"%>

<%@page language="java" contentType="text/html"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<%

    float per1 = 0.0f;
    float per2 = 0.0f;
    float per3 = 0.0f;
    float per4 = 0.0f;
    float pera1 = 0.0f;
    float perb2 = 0.0f;
    float perc3 = 0.0f;
    float perd4 = 0.0f;
    float pere5 = 0.0f;
    float perf6 = 0.0f;

%>

<!DOCTYPE html>
<html>

    <!-- Mirrored from phantom-themes.com/modern/Source/admin1/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:11:45 GMT -->
    <head>

        <!-- Title -->
        <link rel="icon" href="icon5.png">  
        <title>Home-Acron Internatinal</title>
     
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="style.css">

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
        <link href="tempcss.css" rel="stylesheet">
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel="canonical" href="https://webdevtrick.com/bootstrap-expand-cards/" />

                   
    </head>
    <body class="page-header-fixed">
        
        
        
        <%
                    
        Statement st=null;
        DBConnector db=new DBConnector();
        st=db.getStatement();
                    
try
        {
         
         String query="select sum(quantity)from sale";
         ResultSet rs1=st.executeQuery(query);
         float salevalue = 0;
         
         while(rs1.next())
         {
            salevalue = rs1.getFloat(1);
         }
         rs1.close();
         
         String query1="select sum(Quantity)from transfer";
         ResultSet rs2=st.executeQuery(query1);
         float salevalue1 = 0;
         
         while(rs2.next())
         {
            salevalue1 = rs2.getFloat(1);
         }
         rs2.close();
         
         String query2="select sum(quantity)from import";
         ResultSet rs3=st.executeQuery(query2);
         float salevalue2 = 0;
         
         while(rs3.next())
         {
            salevalue2 = rs3.getFloat(1);
         }
         rs3.close();
         
         String query3="select sum(quantity)from domestic";
         ResultSet rs4=st.executeQuery(query3);
         float salevalue3 = 0;
         
         while(rs4.next())
         {
            salevalue3 = rs4.getFloat(1);
         }
         rs4.close();
         
         
         String query4="select sum(quantity)from transactions";
         ResultSet rs5=st.executeQuery(query4);
         float salevalue4 = 0;
         
         while(rs5.next())
         {
            salevalue4 = rs5.getFloat(1);
         }
         rs5.close();
         

         //PERCENTAGE PART:
         per1 = (salevalue*100)/salevalue4;
         per2 = (salevalue1*100)/salevalue4;
         per3 = (salevalue2*100)/salevalue4;
         per4 = (salevalue3*100)/salevalue4;
         




         //Bar Graph Backend Hehe
         String querya1="select count(*),sum(Stored_Quantity) from items where color='white'";
         ResultSet rsa1=st.executeQuery(querya1);
         float quantity11 = 0;
         String count11 = "";
         
         while(rsa1.next())
         {
            count11 = rsa1.getString(1);
            quantity11 = rsa1.getFloat(2);
            
         }
         rsa1.close();
         
         
         
        String queryb2="select count(*),sum(Stored_Quantity) from items where color='blue'";
         ResultSet rsb2=st.executeQuery(queryb2);
         float quantity22 = 0;
         String count22 = "";
         
         while(rsb2.next())
         {
            count22 = rsb2.getString(1);
            quantity22 = rsb2.getFloat(2);
            
         }
         rsb2.close();
         System.out.println(count22);
         

         String queryc3="select count(*),sum(Stored_Quantity) from items where color='grey'";
         ResultSet rsc3=st.executeQuery(queryc3);
         float quantity33 = 0;
         String count33 = "";
         
         while(rsc3.next())
         {
            count33 = rsc3.getString(1);
            quantity33 = rsc3.getFloat(2);
            
         }
         rsc3.close();
         System.out.println(count33);
         
         String queryd4="select count(*),sum(Stored_Quantity) from items where color='resin'";
         ResultSet rsd4=st.executeQuery(queryd4);
         float quantity44 = 0;
         String count44 = "";
         
         while(rsd4.next())
         {
            count44 = rsd4.getString(1);
            quantity44 = rsd4.getFloat(2);
            
         }
         rsd4.close();
         System.out.println(count44);
         
         String querye5="select count(*),sum(Stored_Quantity) from items where color='dead'";
         ResultSet rse5=st.executeQuery(querye5);
         float quantity55 = 0;
         String count55 = "";
         
         while(rse5.next())
         {
            count55 = rse5.getString(1);
            quantity55 = rse5.getFloat(2);
            
         }
         rse5.close();
         System.out.println(count55);
         
         String queryf6="select count(*),sum(Stored_Quantity) from items where color='others'";
         ResultSet rsf6=st.executeQuery(queryf6);
         float quantity66 = 0;
         String count66 = "";
         
         while(rsf6.next())
         {
            count66 = rsf6.getString(1);
            quantity66 = rsf6.getFloat(2);
            
         }
         rsf6.close();
         System.out.println(count66);
         

         String queryg7="select count(*),sum(Stored_Quantity) from items";
         ResultSet rsg7=st.executeQuery(queryg7);
         float quantity7 = 0;
         String count7 = "";
         
         while(rsg7.next())
         {
            count7 = rsg7.getString(1);
            quantity7 = rsg7.getFloat(2);
            
         }
         rsg7.close();
         System.out.println(count7);
         

         //Percentage
         pera1 = (quantity11*100)/quantity7;
         perb2 = (quantity22*100)/quantity7;
         perc3 = (quantity33*100)/quantity7;
         perd4 = (quantity44*100)/quantity7;
         pere5 = (quantity55*100)/quantity7;
         perf6 = (quantity66*100)/quantity7;
         
         //Bar Graph Backend Hehe
         
%> 
    
    

        <script>
            
            
            $(document).ready(function () {

    var flot1 = function () {
        var data = [[0, <%out.print(quantity11);%>], [1, <%out.print(quantity22);%>], [2,<%out.print(quantity33);%>], [3, <%out.print(quantity44);%>], [4, <%out.print(quantity55);%>], [5, <%out.print(quantity66);%>]];
        var dataset = [{
            data: data,
            color: "#22BAA0"
        }];
        var ticks = [[0, "White"], [1, "Blue"], [2, "Grey"], [3, "Resin"], [4, "Dead"], [5, "Others"]];

        var options = {
            series: {
                bars: {
                    show: true
                }
            },
            bars: {
                align: "center",
                barWidth: 0.5
            },
            xaxis: {
                ticks: ticks
            },
            legend: {
                show: false
            },
            grid: {
                color: "#AFAFAF",
                hoverable: true,
                borderWidth: 0,
                backgroundColor: '#FFF'
            },
            tooltip: true,
            tooltipOpts: {
                content: "X: %x, Y: %y",
                defaultTheme: false
            }
        };
        $.plot($("#flot1"), dataset, options);
    };
    
    

    flot1();
    
});
            
        </script>
        
        
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
                        <a  class="logo-text"><img src="icon1.png" width="100" height="30"></a>
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
                        <li class="active" ><a href="home.jsp" class="waves-effect waves-button" ><span class="menu-icon glyphicon glyphicon-home"></span><p>Dashboard</p></a></li>
                        <li><a href="sale-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-briefcase"></span><p>Sale</p></a></li>
                        <li><a href="transfer-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-send"></span><p>Transfer</p></a></li>
                        
                         <li class="droplink"><a href="#" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-shopping-cart"></span><p>Purchase</p><span class="arrow"></span></a>
                            <ul class="sub-menu">
                                <li><a href="import-data.jsp">Import</a></li>
                                <li><a href="domestic-data.jsp">Domestic</a></li>
                                
                            </ul>
                        </li>
                     <li><a href="table-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-sort"></span><p>Transaction</p></a></li>
                        <li><a href="item-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th-list"></span><p>Item</p></a></li>
                        <li><a href="warehouse.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th"></span><p>Warehouse</p></a></li>
                        <li><a href="party-data.jsp" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-th-large"></span><p>Party</p></a></li>
                        <li><a href="LogOutAuthenticator.java" class="waves-effect waves-button"><span class="menu-icon glyphicon glyphicon-log-out"></span><p>Log Out</p></a></li>
                        
                   
   
                </div><!-- Page Sidebar Inner -->
            </div><!-- Page Sidebar -->
            <div class="page-inner">
                <div class="page-title" style="margin-bottom: 0px;">
                    <h3><b>Dashboard</b></h3>
                    <div class="page-breadcrumb">
                        <ol class="breadcrumb">
                            <li><a href="home.jsp">Home</a></li>
                            <li class="active">Dashboard</li>
                        </ol>
                    </div>
                </div> 
                
                <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="panel info-box panel-white">
                                <div class="panel-body">
                                    <div class="info-box-stats">
                                        <p class="counter"><%out.println(salevalue);%></p>
                                        <span class="info-box-title">Total Quantity Sold</span>
                                    </div>
                                    <div class="info-box-icon">
                                      
                                    </div>
                                    <div class="info-box-progress">
                                        <div class="progress progress-xs progress-squared bs-n">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="<%out.println(salevalue);%>" aria-valuemin="0" aria-valuemax="<%out.println(salevalue4);%>" style="width: <%out.print(per1);%>%   ">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel info-box panel-white">
                                <div class="panel-body">
                                    <div class="info-box-stats">
                                        <p class="counter"><%out.println(salevalue1);%></p>
                                        <span class="info-box-title">Total Quantity Transferred</span>
                                    </div>
                                    <div class="info-box-icon">
                                     
                                    </div>
                                    <div class="info-box-progress">
                                        <div class="progress progress-xs progress-squared bs-n">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="<%out.println(salevalue1);%>" aria-valuemin="0" aria-valuemax="<%out.println(salevalue4);%>" style="width:  <%out.print(per2);%>%">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel info-box panel-white">
                                <div class="panel-body">
                                    <div class="info-box-stats">
                                        <p><span class="counter"><%out.println(salevalue2);%></span></p>
                                        <span class="info-box-title">Total Quantity Imported</span>
                                    </div>
                                    <div class="info-box-icon">
                                      
                                    </div>
                                    <div class="info-box-progress">
                                        <div class="progress progress-xs progress-squared bs-n">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="<%out.println(salevalue2);%>" aria-valuemin="0" aria-valuemax="<%out.println(salevalue4);%>" style="width: <%out.print(per3);%>%">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="panel info-box panel-white">
                                <div class="panel-body">
                                    <div class="info-box-stats">
                                        <p class="counter"><%out.println(salevalue3);%></p>
                                        <span class="info-box-title">Total Quantity Imported Domestically</span>
                                    </div>
                                    <div class="info-box-icon">
                                       
                                    </div>
                                    <div class="info-box-progress">
                                        <div class="progress progress-xs progress-squared bs-n">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: <%out.print(per4);%>%">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- Row -->

<%
}
           catch(SQLException e)
            {
               System.out.println(e);
            }
                    %>

                <div class="wrapper">
                        
                    
                        <div class='row dashboard-cards'>
                                                    
                        
                           <%
        
        
        try
        {
         
         String queryo="select * from warehouse";
         ResultSet rs=st.executeQuery(queryo);
         ArrayList<String> list = new ArrayList<String>();
         int i=0;
         while(rs.next())
         {
             list.add(rs.getString("warehouse_name"));
         }
         System.out.println("First Query Working;");
         rs.close();
         while(i<list.size())
         {
             System.out.println(list.get(i));
        %>
          
         
         
         
        
            
        <div class='card col-md-4 ' >
            <div class='card-title' >
                <h2>
                    <%out.println(list.get(i));%>
                    <a href="warehouse-details.jsp"></a>
                    <small>Tap To View More.....</small>
                </h2>
                <div class='task-count'>
                    <i class="fa fa-reorder"></i>
                </div>
            </div>
                    <%
                        
      String queryp="select * from "+list.get(i)+" where Material_Name='PVC-Resin'";
      ResultSet rsp=st.executeQuery(queryp);
      rsp.first();
      System.out.println("Second Query Working;");
      
      %>
            <div class='card-flap flap1'>
                <div class='card-description'>
                    <ul class='task-list'>
                        <li>
            PVC-Resin
            <span><%out.println(rsp.getFloat("Quantity"));%></span>
          </li>
          <%  System.out.println(rsp.getFloat("Quantity"));
          rsp.close();%>
          
      <%
          
      String queryq="select * from "+list.get(i)+" where Material_Name='PVC-Regrind'";
      ResultSet rsq=st.executeQuery(queryq);
      rsq.first();
      System.out.println("Third Query Working;");
      
      %>
                        <li>
            PVC-Regrind
            <span><%out.println(rsq.getFloat("Quantity"));%></span>
          </li>
          <% 
            System.out.println(rsq.getFloat("Quantity"));
            rsq.close();
           %>
           <%
               
      String queryr="select * from "+list.get(i)+" where Material_Name='PVC-Pulver'";
      ResultSet rsr=st.executeQuery(queryr);
      rsr.first();
      System.out.println("Fourth Query Working;");
      
      %>
          <li>
            PVC-Pulver
            <span><%out.println(rsr.getFloat("Quantity"));%></span>
          </li>
          <%  System.out.println(rsr.getFloat("Quantity"));
          rsr.close();
          
%>
                    </ul>
                </div>
                <div class='card-flap flap2'>
                    <div class='card-actions'>
                        
                        <a  href='warehouse-deatils.jsp?wname=<%out.println(list.get(i));%>'>View More</a>
                    </div>
                </div>
            </div>
        </div>
            
                            <!-- ./Team member -->
          <% i++;
            }

        }
           catch(SQLException e)
            {
               System.out.println(e);
            }
          %>
                                   </div>

                  


</div>





                
                <div class="overlay"></div>
                
                
            
                
                <!-- Row -->
                    <div class="row">
                        
                        
                        <div class="col-lg-12 col-md-12">
                            <div class="panel panel-white">
                                
                                <div class="row">
                        <div class="col-sm-8">
                            <div class="panel panel-white">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Bar Chart</h3>
                                </div>
                                <div class="panel-body">
                                    <div id="flot1"></div>
                                </div>
                            </div>
                        </div>
                                    <div class="col-sm-4" >
                                        <div class="stats-info">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">Color Material Status</h4>
                                            </div>
                                            <div class="panel-body">
                                                <ul class="list-unstyled" style="font-size:1.2em;">
                                                    <li>Total White<div class="text-success pull-right"><%out.print(pera1+"%");%><i class="fa fa-level-up"></i></div></li>
                                                    <li>Total Blue<div class="text-success pull-right"><%out.print(perb2+"%");%><i class="fa fa-level-up"></i></div></li>
                                                    <li>Total Grey<div class="text-success pull-right"><%out.print(perc3+"%");%><i class="fa fa-level-up"></i></div></li>
                                                    <li>Total Resin<div class="text-success pull-right"><%out.print(perd4+"%");%><i class="fa fa-level-up"></i></div></li>
                                                    <li>Total Dead<div class="text-success pull-right"><%out.print(pere5+"%");%><i class="fa fa-level-up"></i></div></li>
                                                    <li>Total Others<div class="text-success pull-right"><%out.print(perf6+"%");%><i class="fa fa-level-up"></i></div></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                        
                
                
                
                
                        
                        <!--Colour Table-->
                                            <%
                    
        
        st=db.getStatement();
                    
try
        {
         
         String querya="select count(*),sum(Stored_Quantity) from items where color='white'";
         ResultSet rsa=st.executeQuery(querya);
         float quantity1 = 0;
         String count1 = "";
         
         while(rsa.next())
         {
            count1 = rsa.getString(1);
            quantity1 = rsa.getFloat(2);
            
         }
         rsa.close();
         
         
         
        String queryb="select count(*),sum(Stored_Quantity) from items where color='blue'";
         ResultSet rsb=st.executeQuery(queryb);
         float quantity2 = 0;
         String count2 = "";
         
         while(rsb.next())
         {
            count2 = rsb.getString(1);
            quantity2 = rsb.getFloat(2);
            
         }
         rsb.close();
         System.out.println(count2);
         

         String queryc="select count(*),sum(Stored_Quantity) from items where color='grey'";
         ResultSet rsc=st.executeQuery(queryc);
         float quantity3 = 0;
         String count3 = "";
         
         while(rsc.next())
         {
            count3 = rsc.getString(1);
            quantity3 = rsc.getFloat(2);
            
         }
         rsc.close();
         System.out.println(count3);
         
         String queryd="select count(*),sum(Stored_Quantity) from items where color='resin'";
         ResultSet rsd=st.executeQuery(queryd);
         float quantity4 = 0;
         String count4 = "";
         
         while(rsd.next())
         {
            count4 = rsd.getString(1);
            quantity4 = rsd.getFloat(2);
            
         }
         rsd.close();
         System.out.println(count4);
         
         String querye="select count(*),sum(Stored_Quantity) from items where color='dead'";
         ResultSet rse=st.executeQuery(querye);
         float quantity5 = 0;
         String count5 = "";
         
         while(rse.next())
         {
            count5 = rse.getString(1);
            quantity5 = rse.getFloat(2);
            
         }
         rse.close();
         System.out.println(count5);
         
         String queryf="select count(*),sum(Stored_Quantity) from items where color='others'";
         ResultSet rsf=st.executeQuery(queryf);
         float quantity6 = 0;
         String count6 = "";
         
         while(rsf.next())
         {
            count6 = rsf.getString(1);
            quantity6 = rsf.getFloat(2);
            
         }
         rsf.close();
         System.out.println(count6);
         

         String queryg="select count(*),sum(Stored_Quantity) from items";
         ResultSet rsg=st.executeQuery(queryg);
         float quantity = 0;
         String count = "";
         
         while(rsg.next())
         {
            count = rsg.getString(1);
            quantity = rsg.getFloat(2);
            
         }
         rsg.close();
         System.out.println(count);
         

         //Percentage
         float pera = (quantity1*100)/quantity;
         float perb = (quantity2*100)/quantity;
         float perc = (quantity3*100)/quantity;
         float perd = (quantity4*100)/quantity;
         float pere = (quantity5*100)/quantity;
         float perf = (quantity6*100)/quantity;
         
         

%>
                      
                        <div class="col-lg-12 col-md-12">
                            <div class="panel panel-white">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Colour Distribution</h4>
                                </div>
                                <div class="panel-body">
                                    <div class="table-responsive project-stats">  
                                       <table class="table">
                                           <thead>
                                               <tr>
                                                   <th>Colour</th>
                                                   <th>No. Of Materials</th>
                                                   <th>Quantity Stored</th>
                                                   <th>Progress</th>
                                               </tr>
                                           </thead>
                                           <tbody>
                                               <tr>
                                                   <th scope="row">WHITE</th>
                                                   <td><%out.println(count1);%></td>
                                                   <td><%out.println(quantity1);%></td>
                                                   <td>
                                                       <div class="progress progress-sm">
                                                           <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <%out.print(pera);%>%">
                                                           </div>
                                                       </div>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <th scope="row">BLUE</th>
                                                   <td><%out.println(count2);%></td>
                                                   <td><%out.println(quantity2);%></td>
                                                   <td>
                                                       <div class="progress progress-sm">
                                                           <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <%out.print(perb);%>%">
                                                           </div>
                                                       </div>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <th scope="row">GREY</th>
                                                   <td><%out.println(count3);%></td>
                                                   <td><%out.println(quantity3);%></td>
                                                   <td>
                                                       <div class="progress progress-sm">
                                                           <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: <%out.print(perc);%>%">
                                                           </div>
                                                       </div>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <th scope="row">RESIN</th>
                                                   <td><%out.println(count4);%></td>
                                                  
                                                   <td><%out.println(quantity4);%></td>
                                                   <td>
                                                       <div class="progress progress-sm">
                                                           <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: <%out.print(perd);%>%">
                                                           </div>
                                                       </div>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <th scope="row">DEAD</th>
                                                   <td><%out.println(count5);%></td>
                                                   <td><%out.println(quantity5);%></td>
                                                   <td>
                                                       <div class="progress progress-sm">
                                                           <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: <%out.print(pere);%>%">
                                                           </div>
                                                       </div>
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <th scope="row">OTHERS</th>
                                                   <td><%out.println(count6);%></td>    
                                                   <td><%out.println(quantity6);%></td>
                                                   <td>
                                                       <div class="progress progress-sm">
                                                           <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 7<%out.print(perf);%>%">
                                                           </div>
                                                       </div>
                                                   </td>
                                               </tr>
                                               
                                               
                                           </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> 
                
                
     <%
          }
           catch(SQLException e)
            {
               System.out.println(e);
            }
                    %>

                 <div class="page-footer">
                    <p class="no-s">2021 &copy; All rights reserved to Acron International</p>
                </div>
                
                
            </div><!-- Main Wrapper -->

        </div> <!-- Page Inner -->
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
                    <a href="index.html">
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
        
        

        <script src="tempjs.js"></script>
        

    </body>

    <!-- Mirrored from phantom-themes.com/modern/Source/admin1/ by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 04 Oct 2021 06:12:43 GMT -->
</html>