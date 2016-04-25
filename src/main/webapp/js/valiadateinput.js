//
//User add form validation
//
function validateUserAdd() {
    /*
     * Define Name validation pattern
     */
    var namePat = /^[A-Za-z]+$/;

    /*
     * username validation
     */
    var usrnm = document.getElementById("txtuname");
    if (!usrnm.value.match(namePat)) {
        if (usrnm.value == null) {  //username should not be empty
            alert("Please enter user name!");
        } else {
            alert(" Error: Username must contain only letters, Please enter a correct name !");//username should matches with the namePattern
            usrnm.value = ""; //clear username field
            usrnm.focus();  //focus in username field
            return false;
        }
    }

    /*
     * first name validation
     */

    var usrfn = document.getElementById("txtfname");
    if (!usrfn.value.match(namePat)) {
        if (usrfn.value == null) { //firstname should not be empty
            alert("Please enter first name !");
        } else {
            alert("Invalid first name ");  //firstname should matches with the namePattern
            usrfn.value = ""; //clear firstname field
            usrfn.focus();  //focus in firstname field
            return false;
        }
    }

    /*
     * last name validation
     */

    var usrln = document.getElementById("txtlstnm");
    if (!usrln.value.match(namePat)) {
        alert("Invalid last name. Please enter a correct name !");  //lastname should matches with the namePattern
        usrln.value = ""; //clear lastname field
        usrln.focus();  //focus in lastname field
        return false;
    }

    /*
     * Date of birth validation
     */


    /*
     * Password validation pattern
     */

    var passwdPat = /^(?=.{8,32}$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*$/;

    /*
     * password validation
     */

    var password = document.getElementById("txtpass");
    if (!password.value.match(passwdPat)) {
        if (password.value == null) {
            alert("Please enter a password !")
        } else {
            alert("Invalid password. please enter a password with ");
            password.value = "";
            password.focus();
            return false;
        }
    }
    /*
     * confirm password
     */
    var confpass = document.getElementById("txtconfpass");
    if (confpass.value == password.value) {
        alert("Passwords are not matching !");
    }

    /*
     * Define Email validation pattern
     */

    var emailPat = /^[a-zA-Z0-9\.\_]+\@[a-zA-Z\d\-\.]+\.[a-zA-Z]{2,}$/;
    ///^[_A-Za-z0-9-\\+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})$/;

    /*
     * user email validation
     */

    var usrEmail = document.getElementById("txtemail");
    if (!usrEmail.value.match(emailPat)) {
        if (usrEmail.value == null) {
            alert("Please enter your email !")
        } else {
            alert("Invalid email. Please enter a valid email !");
            usrEmail.value = "";
            usrEmail.focus();
            return false;
        }

    }

    return true;
}