<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%--
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
--%>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.css">
    <link rel="stylesheet" href="css/mystyles.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-3-typeahead/4.0.1/bootstrap3-typeahead.min.js"></script>
    <script src="js/myscripts.js"></script>
    <script src="js/valiadateinput.js"></script>
    <script src="js/updateuser.js"></script>


</head>

<body id="translatebody">
<%--<c:set var="salary" scope="session" value="${2000*2}"/>
<c:out value="${salary}"/>--%>

<div class="container-fluid">
    <div id="trjumbotron" class="jumbotron">
        <div id="siteheader">
            <div class="top-buffer" id="divheader">
                <h3><b>Welcome to Translation</b></h3>
                <hr style="color: #aa80ff;border: 1px solid;">
            </div>
            <div id="navbarMain">
                <nav class="navbar navbar-inverse navbar-fixed-top">
                    <div class="container-fluid">
                        <ul class="nav navbar-nav nav-tabs">
                            <div class="navbar-header">
                                <h3 style="color: #aa80ff">Welcome <b><%= session.getAttribute("sessionname")%>
                                    ..&nbsp; </b></h3>
                            </div>
                            <li class="active"><a data-toggle="tab" href="#transcontent">Translator </a></li>
                            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">User
                                Management <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a data-toggle="tab" href="#userAddcontent">Add User</a></li>
                                    <li><a data-toggle="tab" href="#userSearchcontent">Search User</a></li>

                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
                        </ul>
                    </div>

                </nav>
            </div>
        </div>

        <div class="tab-content">
            <div id="transcontent" class="tab-pane fade in active">
                <%@include file="logintranslate.jsp" %>
            </div>
            <div id="userAddcontent" class="tab-pane fade">
                <%@include file="adduser.jsp" %>
            </div>
            <div id="userSearchcontent" class="tab-pane fade">
                <%@include file="searchuser.jsp" %>
            </div>
        </div>

        <%@include file="footer.jsp" %>
    </div>
</div>


<%--Unique username checking function--%>
<script type="text/javascript">

    $(document).ready(function () {
        $("#txtuname").focusout(function () {
            var uname = $(this).val();
            if (uname !== "" && uname.length < 20) {
                $(".status").html("<img src='images/loader.gif'> Checking availability...");
                $.ajax
                ({
                    type: "POST",
                    url: "UsernameValidate",
                    data: "uname=" + uname,
                    success: function (msg) {
                        $(".status").html(msg);
                    }
                });
            }
            else {
                $(".status").html("<i>username should be less than 20 chars<i>");
            }
        });
    });
</script>
<script type="text/javascript" src="js/searchuser.js"></script>


<!--javascript and css files for update DOB calendar -->

<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<script>
    $(document).ready(function () {
        var date_input = $('input[name="date"]');
        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'yyyy-mm-dd',
            container: container,
            todayHighlight: true,
            autoclose: true,
            startView: 2,
            defaultViewDate: {year: 1990},
            endDate: '-1d'
        })
    })
</script>
<script>
    $(document).ready(function () {
        var date_input = $('input[name="dateUpdt"]');
        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'yyyy-mm-dd',
            container: container,
            todayHighlight: true,
            autoclose: true,
            startView: 2,
            defaultViewDate: {year: 1990},
            endDate: '-1d'
        })
    })
</script>
<!--//javascript and css files for update DOB calendar -->

</body>
</html>
