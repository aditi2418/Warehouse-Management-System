<%-- 
    Document   : add-document
    Created on : 17 Oct, 2021, 6:34:58 PM
    Author     : 91934
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBConnector"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    
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
  width: 20%;
  padding: 1.5em auto;
  margin: 1em auto;
  background-color: #43BFC7;
  border: none;
  border-radius: 3px;
  text-transform: uppercase;
  letter-spacing: 0.05em;
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
        
 
input,select,textarea{
    margin-left: 124px;
}

        
        
        

    </style>
    
    
        <title>File Input Plug-In</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="assets/input/temp.css">
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
       
    <center> 
        
        
        
        <form action="AddDocumentServlet" method="post" enctype="multipart/form-data">
            
            <input name="id" value="<%out.println(request.getParameter("id"));%>" hidden>    
            <input name="mode" value="<%out.println(request.getParameter("mode"));%>" hidden> 
            
     <%System.out.println(request.getParameter("mode"));%><%System.out.println(request.getParameter("id"));%>
      
        
      
        <table>
            <tr>
                <td>
                
<div class="file-loading" > 
    <input id="input-b6a" name="input-b6a[]" type="file" multiple  >
</div>

                </td>


                <td>
                    
                    <div class="file-loading"> 
    <input id="input-b6a2" name="input-b6a2[]" type="file" multiple >
</div>
                    
                </td>
  
                <td>
                    <div class="file-loading" > 
    <input id="input-b6a3" name="input-b6a3[]" type="file" multiple  >
</div>
                    
                </td>
    
                <td>
        
        
    <div class="file-loading"> 
    <input id="input-b6a1" name="input-b6a1[]" type="file" multiple >
</div>
                </td>
        </tr>
        </table>
    
      <div class="row">
      <div class="col-25">
        <label for="ewaybill">Lading Bill</label>
      </div>
        <div class="col-75">
        
    
  
      </div>
    </div>

            
            
            
            
        <div class="row" >
      <div class="col-25">
        <label for="ewaybill">Bill Of Entry</label>
      </div>
        
        
<div class="file-loading" > 
    <input id="input-b6a3" name="input-b6a3[]" type="file" multiple  >
</div>




    
  
      </div>
    
      <div class="row">
      <div class="col-25">
        <label for="ewaybill">CBL</label>
      </div>
        <div class="col-75">
        
    <div class="file-loading"> 
    <input id="input-b6a4" name="input-b6a4[]" type="file" multiple >
</div>
  
      </div>
    </div>
    
      <div class="row">
      <div class="col-25">
        <label for="ewaybill">OBL</label>
      </div>
        <div class="col-75">
        
    <div class="file-loading"> 
    <input id="input-b6a5" name="input-b6a5[]" type="file" multiple >
</div>
  
      </div>
    </div>
            
            <div class="row">
      <div class="col-25">
        <label for="ewaybill">Custom Subsidy</label>
      </div>
        <div class="col-75">
        
    <div class="file-loading"> 
    <input id="input-b6a6" name="input-b6a6[]" type="file" multiple >
</div>
  
      </div>
    </div>


  
            
            
            
            <br><br>
            <div>    
                <input type="submit" value="Save" name="submit" style="width:120px; height: 35px; margin: auto; margin-left: 40%;" >
            </div>
            
            
        </form>
        
    </center>
  <script>
$(document).ready(function() {
    $("#input-b6a").fileinput({
        showUpload: false,
        dropZoneEnabled: false,
        maxFileCount: 10,
        inputGroupClass: "input-group-lg"
    });
    
});
</script>

<script>
$(document).ready(function() {
    $("#input-b6a1").fileinput({
        showUpload: false,
        dropZoneEnabled: false,
        maxFileCount: 10,
        inputGroupClass: "input-group-lg"
    });
    
});
</script>




<script>
$(document).ready(function() {
    $("#input-b6a2").fileinput({
        showUpload: false,
        dropZoneEnabled: false,
        maxFileCount: 10,
        inputGroupClass: "input-group-lg"
    });
    
});
</script>


  <script>
$(document).ready(function() {
    $("#input-b6a3").fileinput({
        showUpload: false,
        dropZoneEnabled: false,
        maxFileCount: 10,
        inputGroupClass: "input-group-lg"
    });
    
});
</script>
  <script>
$(document).ready(function() {
    $("#input-b6a4").fileinput({
        showUpload: false,
        dropZoneEnabled: false,
        maxFileCount: 10,
        inputGroupClass: "input-group-lg"
    });
    
});
</script>
  <script>
$(document).ready(function() {
    $("#input-b6a5").fileinput({
        showUpload: false,
        dropZoneEnabled: false,
        maxFileCount: 10,
        inputGroupClass: "input-group-lg"
    });
    
});
</script>
  
  <script>
$(document).ready(function() {
    $("#input-b6a6").fileinput({
        showUpload: false,
        dropZoneEnabled: false,
        maxFileCount: 10,
        inputGroupClass: "input-group-lg"
    });
    
});
</script>

    </body>
</html>
