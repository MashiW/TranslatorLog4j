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
            <table id="table">

            </table>


        </div>
    </div>
</div>

<%--user update modal--%>
<div class="modal fade" id="usrUpdateModal" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Update User</h4>
            </div>
            <div class="modal-body">
            </div>
            <div style="width: 80%;">
                <%@include file="updateUser.jsp" %>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btnUpdtUsr">Update changes</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            </div>
        </div>
        >
    </div>
</div>
