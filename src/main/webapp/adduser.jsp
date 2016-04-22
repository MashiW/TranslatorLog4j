<div class="container-fluid">
    <%--    <form id="frmUsrAdd" class="form-horizontal" role="form" method="post" action="">
            <div class="form-group">
                <label class="control-label">User Name:</label>
                <input type="text" class="form-control" id="usrnm" placeholder="Enter a username">
            </div>
            <div class="form-group required">
                <label class="col-xs-3 control-label">First Name:</label>
                <input type="text" class="form-control col-xs-5" id="frname" placeholder="Enter first name"
                       required="required">
            </div>
            <div class="form-group">
                <label class="control-label">Last Name:</label>
                <input type="text" class="form-control" id="lstname" placeholder="Enter last name">
            </div>
            <div class="form-group required">
                <label class="col-xs-3 control-label">Date of Birth:</label>
                <input type="date" class="form-control col-xs-5" id="dob" placeholder="Enter dob"
                       required="required">
            </div>

            <div class="form-group required">
                <label class="col-xs-3 control-label">Password:</label>
                <input type="password" class="form-control col-xs-5" id="pswd" placeholder="Enter password"
                       required="required">
            </div>
            <div class="form-group required">
                <label class="col-xs-3 control-label">Confirm Password:</label>
                <input type="password" class="form-control col-xs-5" id="confpswd" placeholder="Re-enter password"
                       required="required">
            </div>
            <div class="form-group required">
                <label class="col-xs-3 control-label">Country:</label>
                <select class="form-control col-xs-5" id="country" required="required">

                </select>
            </div>
            <div class="form-group required">
                <label class="col-xs-3 control-label">Email :</label>
                <input type="email" class="form-control col-xs-5" id="email" placeholder="Enter email"
                       required="required">
            </div>
            <div class="form-group required">
                <label class="col-xs-3 control-label">Phone No :</label>
                <input type="number" class="form-control col-xs-5" id="phone" placeholder="Enter phone"
                       required="required">
            </div>

        </form>--%>

    <div class="panel panel-primary" style="border-color: #aa80ff">
        <div class="panel-heading"
             style="color:#ffffff; background-color:#aa80ff; border-color: #aa80ff ; font-size: large;"><b>Add New
            User</b></div>

        <div class="panel-body">
            <form class="form-horizontal">
                <fieldset>

                    <!-- Form Name -->
                    <legend><h5>Fill all the required fields*</h5></legend>

                    <!-- Search input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtuname">User Name :</label>

                        <div class="col-md-5">
                            <input id="txtuname" name="txtuname" placeholder="enter user name"
                                   class="form-control input-md" required="" type="search">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtfname">First Name :</label>

                        <div class="col-md-5">
                            <input id="txtfname" name="txtfname" placeholder="enter first name"
                                   class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="txtlstnm">Last Name :</label>

                        <div class="col-md-5">
                            <input id="txtlstnm" name="txtlstnm" placeholder="enter last name"
                                   class="form-control input-md" type="text">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form group required" id="datetimepicker5">
                        <label class="col-md-4 control-label" for="txtdob">Date of Birth </label>

                        <div class="col-md-5">
                            <input id="txtdob" name="txtdob" placeholder="MM/DD/YYY" class="form-control" type="text">
<span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                        </div>
                    </div>

                    <!-- Password input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtpass">Password :</label>

                        <div class="col-md-5">
                            <input id="txtpass" name="txtpass" placeholder="enter password"
                                   class="form-control input-md" required="" type="password">

                        </div>
                    </div>

                    <!-- Password input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtconfpass">Confirm Password :</label>

                        <div class="col-md-5">
                            <input id="txtconfpass" name="txtconfpass" placeholder="re-enter password"
                                   class="form-control input-md" required="" type="password">

                        </div>
                    </div>

                    <!--Country-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="slctcountry">Select Country :</label>

                        <div class="col-md-4">
                            <select id="slctcountry" name="slctcountry" class="form-control">
                                <option value="sl">Sri Lanka</option>
                                <option value="jp">Japan</option>
                                <option value="ind">India</option>
                                <option value="chi">China</option>
                                <option value="eng">England</option>
                            </select>
                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtphone">Phone :</label>

                        <div class="col-md-4">
                            <input id="txtphone" name="txtphone" placeholder="enter phone number"
                                   class="form-control input-md" type="number">

                        </div>
                    </div>

                    <!-- Text input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtemail">Email :</label>

                        <div class="col-md-5">
                            <input id="txtemail" name="txtemail" placeholder="enter tour email "
                                   class="form-control input-md" type="email">

                        </div>
                    </div>

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="btnAddusr"></label>

                        <div class="col-md-4">
                            <button id="btnAddusr" name="btnAddusr" class="btn btn-default">Add User</button>
                        </div>
                        <label class="col-md-4 control-label" for="btnAddusr"></label>

                        <div class="col-md-4">
                            <button id="btncancel" name="btncancel" class="btn btn-default">Cancel</button>
                        </div>
                    </div>

                </fieldset>
            </form>
        </div>
    </div>
</div>