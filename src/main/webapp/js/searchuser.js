/*
 * search user function
 */
$(document).ready(function () {
    $("#btnSrchUser").onclick(function () {
        var usrSearch = document.getElementById("txtSrchun").val();
        if (usrSearch == "") {
            $.ajax
            ({
                type: "POST",
                url: "SearchUser",
                data: "usrSearch=" + usrSearch,
                success: function () {
                }
            });
        }
        else {
        }
    });
});