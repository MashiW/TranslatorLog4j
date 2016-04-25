<div class="container-fluid">

    <div class="panel panel-primary" style="border-color: #aa80ff">
        <div class="panel-heading"
             style="color:#ffffff; background-color:#aa80ff; border-color: #aa80ff ; font-size: large;"><b>Add New
            User</b></div>

        <div class="panel-body">
            <form class="form-horizontal" id="frmUsrAdd" name="frmUsrAdd" method="post"
                  onsubmit="return validateUserAdd();">
                <fieldset>

                    <legend><h5><i>Fill all the required fields*</i></h5></legend>

                    <!-- usrname input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtuname">User Name :</label>

                        <div class="col-md-5">
                            <input id="txtuname" name="txtuname" placeholder="enter user name"
                                   class="form-control input-md" required="" type="search">

                        </div>
                    </div>

                    <!-- firstname input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtfname">First Name :</label>

                        <div class="col-md-5">
                            <input id="txtfname" name="txtfname" placeholder="enter first name"
                                   class="form-control input-md" required="" type="text">

                        </div>
                    </div>

                    <!-- lastname input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="txtlstnm">Last Name :</label>

                        <div class="col-md-5">
                            <input id="txtlstnm" name="txtlstnm" placeholder="enter last name"
                                   class="form-control input-md" type="text">

                        </div>
                    </div>

                    <%--DOB calendar ref--%>
                    <div>
                        <%@include file="datepicker.jsp" %>
                    </div>

                    <!-- Password input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtpass">Password :</label>

                        <div class="col-md-5">
                            <input id="txtpass" name="txtpass" placeholder="enter password"
                                   class="form-control input-md" required="" type="password">

                        </div>
                    </div>

                    <!-- Password confirm input-->
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

                    <!-- phone no input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtphone">Phone :</label>

                        <div class="col-md-4">
                            <input id="txtphone" name="txtphone" placeholder="enter phone number"
                                   class="form-control input-md" type="text">

                        </div>
                    </div>

                    <!-- email input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtemail">Email :</label>

                        <div class="col-md-5">
                            <input id="txtemail" name="txtemail" placeholder="enter your email"
                                   class="form-control input-md" type="email">

                        </div>
                    </div>

                    <!-- Button -->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="btnAddusr"></label>

                        <div class="col-md-4">
                            <button id="btnAddusr" name="btnAddusr" class="btn btn-default" type="submit">Add User
                            </button>
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

