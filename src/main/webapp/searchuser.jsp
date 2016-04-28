<div class="container-fluid">

    <div class="panel panel-primary" style="border-color:#bfbfbf">
        <div class="panel-heading"
             style="color:#ffffff; background-color:#ababab; border-color: #bfbfbf ; font-size: large;"><b>Search
            User</b></div>

        <div class="panel-body">

            <form id="frmUsrSearch" class="form-horizontal" role="form" method="post">
                <fieldset>
                    <legend></legend>

                    <!-- usrname input-->
                    <div class="form-group required">
                        <label class="col-md-4 control-label" for="txtSrchun">User Name :</label>

                        <div class="col-md-4">
                            <input id="txtSrchun" name="txtSrchun" placeholder="enter user name"
                                   class="form-control input-md" type="search">
                            <label id="sercherr" class="input-group-error form-error"></label>
                        </div>

                        <div class="col-md-2 ">
                            <input class="form-control input-md" id="btnSrchUser" type="submit" value="Search">
                        </div>
                    </div>
                </fieldset>
            </form>
            <div id="usrDataView">
                <table id="table" data-pagination="true">
                    <tr>
                        <th data-field="usrnm" data-align="right">User Name</th>
                        <th data-field="usrpss" data-align="right">Password</th>
                        <th data-field="usrfn" data-align="right">First Name</th>
                        <th data-field="usrln" data-align="right">Last Name</th>
                        <th data-field="usrdob" data-align="right">DOB</th>
                        <th data-field="usrphone" data-align="right">Phone No:</th>
                        <th data-field="usrcntry" data-align="right">Country</th>
                    </tr>
                </table>

            </div>
        </div>
    </div>
</div>
