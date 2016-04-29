/*
 * search user function
 */

$(document).ready(function () {
    $.ajax({
        type: "POST",
        url: "SearchUser",
        dataType: "json",
        success: function (result) {

            $('#table').bootstrapTable({
                pagination: true,
                pageSize: 10,
                pageList: [10, 25, 50, 100, 200],
                search: true,
                showColumns: true,
                showRefresh: true,
                clickToSelect: true,
                singleSelect: true,
                minimumCountColumns: 3,
                columns: [{
                    field: 'usrnm',
                    title: 'User Name',
                    sortable: true
                }, {
                    field: 'usrfn',
                    title: 'First Name',
                    sortable: true
                }, {
                    field: 'usrln',
                    title: 'Last Name',
                    sortable: true
                }, {
                    field: 'usrdob',
                    title: 'DOB',
                    sortable: true
                }, {
                    field: 'usrphone',
                    title: 'Phone No:'
                }, {
                    field: 'usrcntry',
                    title: 'Country'
                }, {
                    field: 'usremail',
                    title: 'Email'
                }, {
                    field: 'Options',
                    title: 'Options',
                    align: 'center',
                    formatter: operateFormatter
                    //,events: operateEvents
                }],
                data: result
            });
        }
    });
})

function operateFormatter(value, row, index) {
    return [
        '<center>',
        '<a class="edit" href="javascript:void(0)" title="Edit">',
        '<i class="glyphicon glyphicon-edit">Edit</i>',
        '</a>&nbsp;&nbsp;&nbsp;&nbsp;',
        '<a class="delete" href="javascript:void(0)" title="Delete">',
        '<i class="glyphicon glyphicon-remove">Delete</i>',
        '</a></center>'
    ].join('');
}


/*
 window.operateEvents = {
 'click.edit': function () {
 $('#usrUpdateModal').modal('show');
 }/!*,
 'click .delete': function (e, value, row, index) {
 var js=JSON.stringify(row);
 var obj=JSON.parse(js);
 alert(obj["username"]);
 $('#txtunameUpd').text("First name: "+obj[1]);
 $('#txtfnameUpd').text("Last name: "+obj["lastname"]);
 $('#lbCountry').text("Country: "+obj["country"]);
 $('#lbDob').text("Date of birth: "+obj["dob"]);
 $('#lbUsrname').text("User name: "+obj["username"]);
 $('#lbEmail').text("Email: "+obj["email"]);
 $('#lbTel').text("Contact no: "+obj["tel"]);
 $('#deleteUserPopup').modal('show');
 }*!/
 };
 */

/*
 window.operateEvents = {
 'click .edit': function (e, value, row, index) {
 $('#updateUserPopup').modal('show');
 },
 'click .delete': function (e, value, row, index) {
 var js=JSON.stringify(row);
 var obj=JSON.parse(js);
 alert(obj["username"]);
 $('#lbFname').text("First name: "+obj["firstname"]);
 $('#lbLname').text("Last name: "+obj["lastname"]);
 $('#lbCountry').text("Country: "+obj["country"]);
 $('#lbDob').text("Date of birth: "+obj["dob"]);
 $('#lbUsrname').text("User name: "+obj["username"]);
 $('#lbEmail').text("Email: "+obj["email"]);
 $('#lbTel').text("Contact no: "+obj["tel"]);
 $('#deleteUserPopup').modal('show');
 }
 };*/
