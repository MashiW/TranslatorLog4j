/*
 * search user function
 */

$(document).ready(function () {
    //$("#btnSrchUser").click(function () {
    //var usrSearch = document.getElementById("txtSrchun").val();
    //if (usrSearch == "") {
            $.ajax
            ({
                type: "post",
                url: "SearchUser",
                // dataType: "json",
                //data: "usrSearch=" + usrSearch,
                data: [{
                    field: 'usrnm',
                    title: 'User Name',
                    align: 'right',
                    valign: 'bottom',
                    sortable: true
                }, {
                    field: 'usrpss',
                    title: 'Password',
                    align: 'center',
                    valign: 'middle',
                    sortable: true
                }, {
                    field: 'usrfn',
                    title: 'First Name',
                    align: 'left',
                    valign: 'top',
                    sortable: true
                }, {
                    field: 'usrln',
                    title: 'Last Name',
                    align: 'center',
                    valign: 'middle'
                }, {
                    field: 'usrdob',
                    title: 'DOB',
                    align: 'center',
                    valign: 'middle'
                }, {
                    field: 'usrphone',
                    title: 'Phone No:',
                    align: 'center',
                    valign: 'middle'
                }, {
                    field: 'usrcntry',
                    title: 'Country',
                    align: 'center',
                    valign: 'middle'
                }, {
                    field: 'usremail',
                    title: 'Email',
                    align: 'center',
                    valign: 'middle'
                }],
                success: function (data) {
                    $("#table").bootstrapTable({})

                }
            });
    //}
    /*else {
     }*/
    //});
});

/*
 $(document).ready(function() {
 $('#table-javascript').DataTable( {
 "ajax": "SearchUser",
 "columns": [
 { "data": "usrnm" },
 { "data": "usrpss" },
 { "data": "usrfn" },
 { "data": "usrln" },
 { "data": "usrdob" },
 { "data": "usrphone" },
 { "data": "usrcntry" }
 ]
 } );
 } );*/
