//
//*Swapping translating text*/
//
        function swapText() {

        var x = document.getElementById("fromText").value;
        var y = document.getElementById("toText").value;

         document.getElementById("toText").value =x;
         document.getElementById("fromText").value =y;
        }

//
/*Login modal display in page load */
//
            $(function() {
            $("#loginModal").modal('show');
        });

//
/*Datepicker5 for dob */
//
$(function () {
    $('#datetimepicker5').datetimepicker({

        /*     var today = new Date();
         var dd = today.getDate();
         var mm = today.getMonth()+1; //January is 0!
         var yyyy = today.getFullYear();

         if(dd<10) {
         dd='0'+dd
         }

         if(mm<10) {
         mm='0'+mm
         }

         today = mm+'/'+dd+'/'+yyyy;*/
        //document.write(today);


        /*defaultDate: "11/1/2013",
         disabledDates: [
         moment("12/25/2013"),
         new Date(2013, 11 - 1, 21),
         "11/22/2013 00:53"
         ]*/
    });
});

