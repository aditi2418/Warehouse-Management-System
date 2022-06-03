<%-- Document : add-document Created on : 17 Oct, 2021, 6:34:58 PM Author : 91934 --%>

<%@page import="java.sql.SQLException" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="db.DBConnector" %>
<%@page import="java.sql.Statement" %>

<% System.out.println(request.getParameter("mode")); System.out.println(request.getParameter("id"));
   String mode=request.getParameter("mode"); String id=request.getParameter("id"); %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>





    <title>File Input Plug-In</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <!-- bootstrap 5.x or 4.x is supported. You can also use the bootstrap css 3.3.x versions -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
        crossorigin="anonymous">

    <!-- default icons used in the plugin are from Bootstrap 5.x icon library (which can be enabled by loading CSS below) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.min.css"
        crossorigin="anonymous">

    <!-- alternatively you can use the font awesome icon library if using with `fas` theme (or Bootstrap 4.x) by uncommenting below. -->
    <!-- link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" crossorigin="anonymous" -->

    <!-- the fileinput plugin styling CSS file -->
    <link href="assets/add-document.css" media="all"
        rel="stylesheet" type="text/css" />
    

    <!-- if using RTL (Right-To-Left) orientation, load the RTL CSS file after fileinput.css by uncommenting below -->
    <!-- link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.5/css/fileinput-rtl.min.css" media="all" rel="stylesheet" type="text/css" /-->

    <!-- the jQuery Library -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>

    <!-- piexif.min.js is needed for auto orienting image files OR when restoring exif data in resized images and when you
    wish to resize images before upload. This must be loaded before fileinput.min.js -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.5/js/plugins/piexif.min.js"
        type="text/javascript"></script>

    <!-- sortable.min.js is only needed if you wish to sort / rearrange files in initial preview. 
    This must be loaded before fileinput.min.js -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.5/js/plugins/sortable.min.js"
        type="text/javascript"></script>

    <!-- bootstrap.bundle.min.js below is needed if you wish to zoom and preview file content in a detail modal
    dialog. bootstrap 5.x or 4.x is supported. You can also use the bootstrap js 3.3.x versions. -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>

    <!-- the main fileinput plugin script JS file -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.5/js/fileinput.min.js"></script>

    <!-- following theme script is needed to use the Font Awesome 5.x theme (`fas`). Uncomment if needed. -->
    <!-- script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.5/themes/fas/theme.min.js"></script -->

    <!-- optionally if you need translation for your language then include the locale file as mentioned below (replace LANG.js with your language locale) -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.5/js/locales/LANG.js"></script>


    <style>
        
        .card{
            border:0px;
        }
        
    </style>
</head>

<body class="page-header-fixed">

    <h1 style="text-align:center;margin-bottom: 5%;">Upload Documents</h1>

    <center>




        <form action="AddDocumentServlet" method="post" enctype="multipart/form-data">
            <input name="id" value="<%out.println(request.getParameter("id"));%>" hidden>
            <input name="mode" value="<%out.println(request.getParameter("mode"));%>" hidden>




            <!--New Section-->


            <div class='row dashboard-cards'>
                <div class='card col-md-4 '>

                    <label for="input-25">Planets and Satellites</label>
                    <div class="file-loading">
                        <input id="input-25" name="input25[]" type="file" multiple>
                    </div>

                    <script>
                        $(document).ready(function () {
                    var url1 = 'getImage.jsp?id=<%=id%>&a=1&mode=<%=mode%>';
                            $("#input-25").fileinput({
                                initialPreview: [url1],
                                initialPreviewAsData: true,
                                initialPreviewConfig: [
                                    { downloadUrl: url1 },
                                ],
                                deleteUrl: "DeleteDocumentServlet?id=<%out.print(id);%>&a=1&mode=<%out.print(mode);%>",

                                elErrorContainer: false,
                                overwriteInitial: true,
                                maxFileSize: 10000,

                                showUpload: false,
                                showRemove: false
                            });
                        });
                    </script>

                </div>
                <div class='card col-md-4 '>

                    <label for="input-26">Planets and Satellites</label>
                    <div class="file-loading">
                        <input id="input-26" name="input26[]" type="file" multiple>
                    </div>

                    <script>
                        $(document).ready(function () {
                    var url1 = 'getImage.jsp?id=<%out.print(id);%>&a=2&mode=<%out.print(mode);%>';

                            $("#input-26").fileinput({
                                initialPreview: [url1],
                                initialPreviewAsData: true,
                                initialPreviewConfig: [
                                    { downloadUrl: url1 },
                                ],
                                deleteUrl: "DeleteDocumentServlet?id=<%out.print(id);%>&a=2&mode=<%out.print(mode);%>",

                                elErrorContainer: false,
                                overwriteInitial: true,
                                maxFileSize: 10000,

                                showUpload: false,
                                showRemove: false
                            });
                        });
                    </script>

                </div>
                <div class='card col-md-4 '>

                    <label for="input-27">Planets and Satellites</label>
                    <div class="file-loading">
                        <input id="input-27" name="input27[]" type="file" multiple>
                    </div>

                    <script>
                        $(document).ready(function () {
                    var url1 = 'getImage.jsp?id=<%out.print(id);%>&a=3&mode=<%out.print(mode);%>';

                            $("#input-27").fileinput({
                                initialPreview: [url1],
                                initialPreviewAsData: true,
                                initialPreviewConfig: [
                                    { downloadUrl: url1 },
                                ],
                                deleteUrl: "DeleteDocumentServlet?id=<%out.print(id);%>&a=3&mode=<%out.print(mode);%>",

                                elErrorContainer: false,
                                overwriteInitial: true,
                                maxFileSize: 10000,

                                showUpload: false,
                                showRemove: false
                            });
                        });
                    </script>


                </div>
                <div class='card col-md-4 '>

                    <label for="input-28">Planets and Satellites</label>
                    <div class="file-loading">
                        <input id="input-28" name="input28[]" type="file" multiple>
                    </div>

                    <script>
                        $(document).ready(function () {
                    var url1 = 'getImage.jsp?id=<%out.print(id);%>&a=4&mode=<%out.print(mode);%>';

                            $("#input-28").fileinput({
                                initialPreview: [url1],
                                initialPreviewAsData: true,
                                initialPreviewConfig: [
                                    { downloadUrl: url1 },
                                ],
                                deleteUrl: "DeleteDocumentServlet?id=<%out.print(id);%>&a=4&mode=<%out.print(mode);%>",

                                elErrorContainer: false,
                                overwriteInitial: true,
                                maxFileSize: 10000,

                                showUpload: false,
                                showRemove: false
                            });
                        });
                    </script>

                </div>
                <div class='card col-md-4 '>

                    <label for="input-29">Planets and Satellites</label>
                    <div class="file-loading">
                        <input id="input-29" name="input29[]" type="file" multiple>
                    </div>

                    <script>
                        $(document).ready(function () {
                            var url1 = 'getImage.jsp?id=<%out.print(id);%>&a=5&mode=<%out.print(mode);%>';

                            $("#input-29").fileinput({
                                initialPreview: [url1],
                                initialPreviewAsData: true,
                                initialPreviewConfig: [
                                    { downloadUrl: url1 },
                                ],
                                deleteUrl: "DeleteDocumentServlet?id=<%out.print(id);%>&a=5&mode=<%out.print(mode);%>",

                                elErrorContainer: false,
                                overwriteInitial: true,
                                maxFileSize: 10000,

                                showUpload: false,
                                showRemove: false
                            });
                        });
                    </script>

                </div>
                <div class='card col-md-4 '>

                    <label for="input-30">Planets and Satellites</label>
                    <div class="file-loading">
                        <input id="input-30" name="input30[]" type="file" multiple>
                    </div>

                    <script>
                        $(document).ready(function () {
                            var url1 = 'getImage.jsp?id=<%out.print(id);%>&a=6&mode=<%out.print(mode);%>';

                            $("#input-30").fileinput({
                                initialPreview: [url1],
                                initialPreviewAsData: true,
                                initialPreviewConfig: [
                                    { downloadUrl: url1 },
                                ],
                        deleteUrl: "DeleteDocumentServlet?id=<%out.print(id);%>&a=6&mode=<%out.print(mode);%>",

                                elErrorContainer: false,
                                overwriteInitial: true,
                                maxFileSize: 10000,

                                showUpload: false,
                                showRemove: false
                            });
                        });
                    </script>

                </div>
                <div class='card col-md-4 '>

                    <label for="input-31">Planets and Satellites</label>
                    <div class="file-loading">
                        <input id="input-31" name="input31[]" type="file" multiple>
                    </div>

                    <script>
                        $(document).ready(function () {
                            var url1 = 'getImage.jsp?id=<%out.print(id);%>&a=7&mode=<%out.print(mode);%>';
                            $("#input-31").fileinput({
                                initialPreview: [url1],
                                initialPreviewAsData: true,
                                initialPreviewConfig: [
                                    { downloadUrl: url1 },
                                ],
                        deleteUrl: "DeleteDocumentServlet?id=<%out.print(id);%>&a=7&mode=<%out.print(mode);%>",

                                elErrorContainer: false,
                                overwriteInitial: true,
                                maxFileSize: 10000,

                                showUpload: false,
                                showRemove: false
                            });
                        });
                    </script>

                </div>
            </div>






            <div>
                <input type="submit" value="Save" name="submit"
                    style="width:120px; height: 35px; margin: auto; margin-left: 40%;">
            </div>


        </form>

    </center>








</body>

</html>