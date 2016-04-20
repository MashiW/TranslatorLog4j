<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="css/mystyles.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
            crossorigin="anonymous"></script>
    <script src="js/myscripts.js"></script>
</head>

<body id="translatebody">

<div class="container-fluid">
    <div id="trjumbotron" class="jumbotron">

        <div class="top-buffer" id="divheader">
            <h2>Welcome <b><%= session.getAttribute("sessionname")%>... !</b></h2>
        </div>
        <div id="navbarMain">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Translator</a></li>
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">User Management <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Add User</a></li>
                                <li><a href="#">Search User</a></li>
                                <li><a href="#">Edit User</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                    </ul>
                </div>
            </nav>
        </div>

        <br>
        <div id="translator">
        <form role="form" action="TranslateServlet" method="post">
            <div class="row top-buffer">

                <div class="col-md-2"></div>
                <div class="col-md-4">
                    <strong>From:</strong> <br/>
                    <%
                        out.println("<textarea name=\"txtFromText\" id=\"fromText\">");
                        String s1 = (String) request.getAttribute("fromText");
                        if (s1 != null) {
                            out.print(s1);
                        }

                        out.println("</textarea>");
                    %>
                    <br>

                    <div class="top-buffer">
                        <select name="frmType" class="form-control" style="width:150px;">
                            <%
                                ArrayList<String> ar = new ArrayList<String>();
                                ar = (ArrayList<String>) request.getAttribute("list");

                                for (int i = 0; i < ar.size(); i++) {
                                    if (ar.get(i).equals(request.getAttribute("selectedFrom"))) {
                                        out.println("<option selected>" + ar.get(i) + "</option>");
                                    } else {
                                        out.println("<option>" + ar.get(i) + "</option>");
                                    }
                                }
                            %>
                        </select>
                    </div>
                </div>

                <div class="col-md-4">
                    <strong> To:</strong> <br>
                    <%
                        out.println("<textarea name=\"txtToText\" id=\"toText\">");
                        String s2 = (String) request.getAttribute("textReply");
                        if (s2 != null) {
                            out.print(s2);
                        }
                        out.println("</textarea>");
                    %>

                    <br>

                    <div class="top-buffer">
                        <select name="toType" class="form-control" style="width:150px;">
                            <%
                                ArrayList<String> ar2 = new ArrayList<String>();
                                ar2 = (ArrayList<String>) request.getAttribute("list");

                                for (int i = 0; i < ar2.size(); i++) {
                                    if (ar2.get(i).equals(request.getAttribute("selectedTo"))) {
                                        out.println("<option selected>" + ar2.get(i) + "</option>");
                                    } else {
                                        out.println("<option>" + ar2.get(i) + "</option>");
                                    }
                                }
                            %>
                        </select>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="top-buffer" style="margin:5% 30% 0 30%;">
                <button type="button" onclick="swapText()" class="btn btn-default">Swap text</button>
                <input type="submit" class="btn btn-default" value="Translate" align>
                <input type="reset" class="btn btn-default" value="Reset">

            </div>
        </form>
        <br>

        <div class="row top-buffer">
            <div class="row">
                <h5><b>Powered by Yandex.Translate: </b><a href="http://translate.yandex.com/">
                    http://translate.yandex.com/</a></h5>
            </div>
        </div>
        </div>
        <div id="usradding">
            <form id="frmUsrAdd" class="form-horizontal" role="form" method="post" action="">
                <div class="form-group">
                    <label class="col-xs-3 control-label">User Name:</label>
                    <input type="text" class="form-control col-xs-5" id="usrnm" placeholder="Enter a username">
                </div>
                <div class="form-group">
                    <label class="col-xs-3 control-label">First Name:</label>
                    <input type="text" class="form-control" id="frname" placeholder="Enter first name">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
