<div class="container-fluid">

    <div class="panel panel-primary" style="border-color:#bfbfbf">
        <div class="panel-heading"
             style="color:#ffffff; background-color:#ababab; border-color: #bfbfbf ; font-size: large;"><b>Search
            User</b></div>

        <div class="panel-body">
            <br>
            <!-- usrname input-->
            <div class="form-group required">
                <label class="col-md-3 control-label" for="txtSrchun" align="right">User Name :</label>

                        <div class="col-md-4">
                            <input id="txtSrchun" name="txtSrchun" placeholder="enter user name"
                                   class="form-control typeahead">
                            <label id="sercherr" class="input-group-error form-error"></label>
                        </div>
                <div class="btn btn-default" id="btnSrchUser" value="Search">Search User</div>
                    </div>

            <table id="table">

            </table>
        </div>
    </div>
</div>


<%--user update modal--%>

<div class="modal fade" id="usrUpdateModal" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-md">
        <div class="modal-content" style="">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title">Update User</h4>
            </div>
            <div class="modal-body">
            </div>
            <div style="width: 80%;">
                <form class="form-horizontal" id="frmUsrUpdt" name="frmUsrUpdt" method="post">
                    <fieldset>

                        <legend><h5><i>Fill out Relevant Fields </i></h5></legend>

                        <!-- usrname input-->
                        <div class="form-group required">
                            <label class="col-md-5 control-label" for="txtunameUpd">User Name :</label>

                            <div class="col-md-6">
                                <input id="txtunameUpd" name="txtunameUpd" placeholder="edit user name"
                                       class="form-control input-md" type="search" readonly><span class="status"></span>
                                <label id="unmerrUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                        <!-- firstname input-->
                        <div class="form-group required">
                            <label class="col-md-5 control-label" for="txtfnameUpd">First Name :</label>

                            <div class="col-md-6">
                                <input id="txtfnameUpd" name="txtfnameUpd" placeholder="edit first name"
                                       class="form-control input-md" type="text">
                                <label id="fnerrUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                        <!-- lastname input-->
                        <div class="form-group">
                            <label class="col-md-5 control-label" for="txtlstnmUpd">Last Name :</label>

                            <div class="col-md-6">
                                <input id="txtlstnmUpd" name="txtlstnmUpd" placeholder="edit last name"
                                       class="form-control input-md" type="text">
                                <label id="lnerrUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                        <%--DOB calendar ref--%>
                        <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css"/>

                        <style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form {
                            font-family: Arial, Helvetica, sans-serif;
                            color: black
                        }

                        .bootstrap-iso form button, .bootstrap-iso form button:hover {
                            color: white !important;
                        }

                        .asteriskField {
                            color: red;
                        }</style>
                        <div>
                            <div class="bootstrap-iso form-group">
                                <label class="col-md-5 control-label requiredField" for="dateUpdt">
                                    Date of Birth:
                                   <span class="asteriskField">
                                    *
                                   </span>
                                </label>

                                <div class="col-md-6">
                                    <input class="form-control" id="dateUpdt" name="dateUpdt" type="text" required
                                           readonly/>
                                    <label id="doberrUpdt" class="input-group-error form-error"></label>
                                </div>
                            </div>

                        </div>


                        <!-- Password input-->
                        <div class="form-group required">
                            <label class="col-md-5 control-label" for="txtpassUpd">Password :</label>

                            <div class="col-md-6">
                                <input id="txtpassUpd" name="txtpassUpd" placeholder="enter password"
                                       class="form-control input-md" type="password">
                                <label id="pwderrUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                        <!-- Password confirm input-->
                        <div class="form-group required">
                            <label class="col-md-5 control-label" for="txtconfpassUpd">Confirm Password :</label>

                            <div class="col-md-6">
                                <input id="txtconfpassUpd" name="txtconfpassUpd" placeholder="re-enter password"
                                       class="form-control input-md" type="password">
                                <label id="cnfpwderrUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                        <!--User group-->
                        <div class="form-group required">
                            <label class="col-md-5 control-label" for="slctgrpUpd">Select Group :</label>

                            <div class="col-md-5">
                                <select id="slctgrpUpd" name="slctgrpUpd" class="form-control">
                                    <option value="0">--Select--</option>
                                </select>
                                <label id="errgrpUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                        <!--Country-->
                        <div class="form-group required">
                            <label class="col-md-5 control-label" for="slctcountryUpd">Select Country :</label>

                            <div class="col-md-5">
                                <select id="slctcountryUpd" name="slctcountryUpd" class="form-control">
                                    <option value="0">--Select--</option>
                                    <option>Sri Lanka</option>
                                    <option>Japan</option>
                                    <option>India</option>
                                    <option>China</option>
                                    <option>England</option>
                                </select>
                                <label id="cntryerrUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                        <%--City--%>
                        <div class="form-group required">
                            <label class="col-md-5 control-label" for="slctcityUpd">Select City :</label>

                            <div class="col-md-4">
                                <select id="slctcityUpd" name="slctcityUpd" class="form-control">
                                    <option>--Select--</option>
                                </select>
                                <label id="cityerrUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                        <!-- phone no input-->
                        <div class="form-group required">
                            <label class="col-md-5 control-label" for="txtphoneUpd">Phone :</label>

                            <div class="col-md-5">
                                <input id="txtphoneUpd" name="txtphoneUpd" placeholder="enter phone number"
                                       class="form-control input-md" type="text">
                                <label id="phnerrUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                        <!-- email input-->
                        <div class="form-group required">
                            <label class="col-md-5 control-label" for="txtemailUpd">Email :</label>

                            <div class="col-md-6">
                                <input id="txtemailUpd" name="txtemailUpd" placeholder="enter your email"
                                       class="form-control input-md" type="email">
                                <label id="emailerrUpd" class="input-group-error form-error"></label>
                            </div>
                        </div>

                    </fieldset>

                </form>
                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4"></label>

                    <div class="col-md-4">
                        <button id="btnUpdtusr" name="btnUpdtusr" class="btn btn-default">Update User
                        </button>
                    </div>

                    <div class="col-md-4">
                        <button id="btncancelUpdt" name="btncancelUpdt" class="btn btn-default">Reset</button>
                    </div>
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>

<%--usrDeleteModal--%>

<div class="modal fade" id="usrDeleteModal">
    <div class="modal-dialog ">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
                <h4 class="modal-title">Delete User</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label> Do you want to delete user : <label id="lblUname"></label></label>
                    <br>
                    <button class="btn" type="button" value="Yes" id="btnDeltUsr">Yes</button>
                    <button class="btn" type="button" value="cancel" id="btnCnclDelt">Cancel</button>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-backdrop="static" data-keyboard="false">Close
                </button>
            </div>
        </div>
    </div>
</div>

