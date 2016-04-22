<div class="modal fade" id="modalUsradd" role="dialog" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Add New User</h4>
            </div>
            <div class="modal-body">

                <form id="frmUsrAdd" class="form-horizontal" role="form" method="post" action="">
                    <div class="form-group">
                        <label class="col-xs-3 control-label">User Name:</label>
                        <input type="text" class="form-control col-xs-5" id="usrnm" placeholder="Enter a username">
                    </div>
                    <div class="form-group required">
                        <label class="col-xs-3 control-label">First Name:</label>
                        <input type="text" class="form-control col-xs-5" id="frname" placeholder="Enter first name"
                               required="required">
                    </div>
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Last Name:</label>
                        <input type="text" class="form-control col-xs-5" id="lstname" placeholder="Enter last name">
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
                        <input type="password" class="form-control col-xs-5" id="confpswd"
                               placeholder="Re-enter password"
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
                    <div class="modal-footer">

                        <div>
                            <button type="submit" class="btn btn-default">&nbsp;Add User</button>
                        </div>
                        <div>
                            <button type="submit" class="btn btn-default">&nbsp;Cancel</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>