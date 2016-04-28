<div class="container-fluid">

    <div class="panel panel-primary" style="border-color:#bfbfbf">
        <div class="panel-heading"
             style="color:#ffffff; background-color:#ababab; border-color: #bfbfbf ; font-size: large;"><b>Add New
            User</b></div>

        <div class="panel-body">

            <form class="form-horizontal" id="frmUsrAdd" name="frmUsrAdd" method="post"
                  onsubmit="return validateUserAdd();" action="RegisterUser">
                <fieldset>

                    <legend><h5><i>Fill all the required fields *</i></h5></legend>

                    <!-- usrname input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtuname">User Name :</label>

                        <div class="col-md-5">
                            <input id="txtuname" name="txtuname" placeholder="enter user name"
                                   class="form-control input-md" type="search"><span class="status"></span>
                            <label id="unmerr" class="input-group-error form-error"></label>
                        </div>
                    </div>

                    <!-- firstname input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtfname">First Name :</label>

                        <div class="col-md-5">
                            <input id="txtfname" name="txtfname" placeholder="enter first name"
                                   class="form-control input-md" type="text">
                            <label id="fnerr" class="input-group-error form-error"></label>
                        </div>
                    </div>

                    <!-- lastname input-->
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="txtlstnm">Last Name :</label>

                        <div class="col-md-5">
                            <input id="txtlstnm" name="txtlstnm" placeholder="enter last name"
                                   class="form-control input-md" type="text">
                            <label id="lnerr" class="input-group-error form-error"></label>
                        </div>
                    </div>

                    <%--DOB calendar ref--%>
                    <div>
                        <%@include file="datepicker.jsp" %>
                        <label id="doberr" class="input-group-error form-error"></label>
                    </div>

                    <!-- Password input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtpass">Password :</label>

                        <div class="col-md-5">
                            <input id="txtpass" name="txtpass" placeholder="enter password"
                                   class="form-control input-md" type="password">
                            <label id="pwderr" class="input-group-error form-error"></label>
                        </div>
                    </div>

                    <!-- Password confirm input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtconfpass">Confirm Password :</label>

                        <div class="col-md-5">
                            <input id="txtconfpass" name="txtconfpass" placeholder="re-enter password"
                                   class="form-control input-md" type="password">
                            <label id="cnfpwderr" class="input-group-error form-error"></label>
                        </div>
                    </div>

                    <!--Country-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="slctcountry">Select Country :</label>

                        <div class="col-md-4">
                            <select id="slctcountry" name="slctcountry" class="form-control">
                                <option value="0">--Select--</option>
                                <option>Sri Lanka</option>
                                <option>Japan</option>
                                <option>India</option>
                                <option>China</option>
                                <option>England</option>
                            </select>
                            <label id="cntryerr" class="input-group-error form-error"></label>
                        </div>
                    </div>

                    <!-- phone no input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtphone">Phone :</label>

                        <div class="col-md-4">
                            <input id="txtphone" name="txtphone" placeholder="enter phone number"
                                   class="form-control input-md" type="text">
                            <label id="phnerr" class="input-group-error form-error"></label>
                        </div>
                    </div>

                    <!-- email input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtemail">Email :</label>

                        <div class="col-md-5">
                            <input id="txtemail" name="txtemail" placeholder="enter your email"
                                   class="form-control input-md" type="email">
                            <label id="emailerr" class="input-group-error form-error"></label>
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


<%--
<div class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Registration Confirmation</h4>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->--%>
