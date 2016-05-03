<form class="form-horizontal" id="frmUsrUpdt" name="frmUsrUpdt" method="post">
    <fieldset>

        <legend><h5><i>Fill out Relevant Fields </i></h5></legend>

        <!-- usrname input-->
        <div class="form-group required">
            <label class="col-md-4 control-label" for="txtunameUpd">User Name :</label>

            <div class="col-md-5">
                <input id="txtunameUpd" name="txtunameUpd" placeholder="edit user name"
                       class="form-control input-md" type="search"><span class="status"></span>
                <label id="unmerrUpd" class="input-group-error form-error"></label>
            </div>
        </div>

        <!-- firstname input-->
        <div class="form-group required">
            <label class="col-md-4 control-label" for="txtfnameUpd">First Name :</label>

            <div class="col-md-5">
                <input id="txtfnameUpd" name="txtfnameUpd" placeholder="edit first name"
                       class="form-control input-md" type="text">
                <label id="fnerrUpd" class="input-group-error form-error"></label>
            </div>
        </div>

        <!-- lastname input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="txtlstnmUpd">Last Name :</label>

            <div class="col-md-5">
                <input id="txtlstnmUpd" name="txtlstnmUpd" placeholder="edit last name"
                       class="form-control input-md" type="text">
                <label id="lnerrUpd" class="input-group-error form-error"></label>
            </div>
        </div>

        <%--DOB calendar ref--%>
        <div class="form-grop">
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

            <div class="bootstrap-iso form-group">
                <label class="col-md-4 control-label requiredField" for="dateUpdt">
                    Date of Birth:
       <span class="asteriskField">
        *
       </span>
                </label>

                <div class="col-md-5">
                    <input class="form-control" id="dateUpdt" name="dateUpdt" type="text" required readonly/>
                    <label id="doberrUpdt" class="input-group-error form-error"></label>
                </div>
            </div>
        </div>

        <!-- Password input-->
        <div class="form-group required">
            <label class="col-md-4 control-label" for="txtpassUpd">Password :</label>

            <div class="col-md-5">
                <input id="txtpassUpd" name="txtpassUpd" placeholder="edit password"
                       class="form-control input-md" type="password">
                <label id="pwderrUpd" class="input-group-error form-error"></label>
            </div>
        </div>

        <!-- Password confirm input-->
        <div class="form-group required">
            <label class="col-md-4 control-label" for="txtconfpassUpd">Confirm Password :</label>

            <div class="col-md-5">
                <input id="txtconfpassUpd" name="txtconfpassUpd" placeholder="re-enter password"
                       class="form-control input-md" type="password">
                <label id="cnfpwderrUpd" class="input-group-error form-error"></label>
            </div>
        </div>

        <!--Country-->
        <div class="form-group required">
            <label class="col-md-4 control-label" for="slctcountryUpd">Select Country :</label>

            <div class="col-md-4">
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

        <!-- phone no input-->
        <div class="form-group required">
            <label class="col-md-4 control-label" for="txtphoneUpd">Phone :</label>

            <div class="col-md-4">
                <input id="txtphoneUpd" name="txtphoneUpd" placeholder="enter phone number"
                       class="form-control input-md" type="text">
                <label id="phnerrUpd" class="input-group-error form-error"></label>
            </div>
        </div>

        <!-- email input-->
        <div class="form-group required">
            <label class="col-md-4 control-label" for="txtemailUpd">Email :</label>

            <div class="col-md-5">
                <input id="txtemailUpd" name="txtemailUpd" placeholder="enter your email"
                       class="form-control input-md" type="email">
                <label id="emailerrUpd" class="input-group-error form-error"></label>
            </div>
        </div>

        <!-- Button -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="btnUpdtusr"></label>

            <div class="col-md-4">
                <button id="btnUpdtusr" name="btnUpdtusr" class="btn btn-default" type="submit">Update User
                </button>
            </div>
            <label class="col-md-4 control-label" for="btnUpdtusr"></label>

            <div class="col-md-4">
                <button id="btncancelUpdt" name="btncancelUpdt" class="btn btn-default">Cancel</button>
            </div>
        </div>

    </fieldset>
</form>
