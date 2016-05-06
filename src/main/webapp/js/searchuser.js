/*
 * search user function
 */

$(document).ready(function () {

    var usrnm = $("#txtSrchun").val();

    $.ajax({
        type: "POST",
        url: "SearchUser",
        dataType: "json",
        data: {"usrnm": usrnm},
        success: function (result) {

            $('#table').bootstrapTable({
                pagination: true,
                pageSize: 10,
                pageList: [10, 25, 50, 100, 200],
                search: false,
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
                    field: 'usrcity',
                    title: 'City'
                }, {
                    field: 'usremail',
                    title: 'Email'
                }, {
                    field: 'Options',
                    title: 'Options',
                    align: 'center',
                    formatter: operateFormatter,
                    events: operateEvents
                }],
                data: result
            });
        }
    });

    /*
     * typeahead function
     */
    $("#txtSrchun").keyup(function () {


        $.ajax({
            type: "POST",
            url: "TypeaheadUsername",
            dataType: "json",
            data: {"usrnm": usrnm},
            success: function (data) {

                $('#txtSrchun').typeahead({
                    source: data
                }).focus();
            }
        })
    })


    $("#btnSrchUser").click(function () {

        $.ajax({
            type: "POST",
            url: "SearchUser",
            dataType: "json",
            data: {"usrnm": $("#txtSrchun").val()},
            success: function (data) {
                $('#table').bootstrapTable('load', data);
            }
        })
    })
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


window.operateEvents = {
    'click .edit': function (e, value, row, index) {

        var data = JSON.stringify(row);
        var objc = JSON.parse(data);
        $('#txtunameUpd').val(objc["usrnm"]);
        $('#txtfnameUpd').val(objc["usrfn"]);
        $('#txtlstnmUpd').val(objc["usrln"]);
        $('#dateUpdt').val(objc["usrdob"]);
        $('#txtphoneUpd').val(objc["usrphone"]);
        $('#slctcountryUpd').val(objc["usrcntry"]);
        $("#slctcityUpd").val(objc["usrcity"]);
        $('#txtemailUpd').val(objc["usremail"]);
        $('#usrUpdateModal').modal('show');
    },
    'click .delete': function (e, value, row, index) {
        var js = JSON.stringify(row);
        var obj = JSON.parse(js);
        $('#lblUname').text(obj["usrnm"]);
        $('#usrDeleteModal').modal('show');
    }
};

