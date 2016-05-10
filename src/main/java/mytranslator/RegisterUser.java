package mytranslator;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterUser extends HttpServlet {

    private static final Logger LOGGER = LogManager.getLogger(RegisterUser.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String uname = request.getParameter("txtuname");
        String fname = request.getParameter("txtfname");
        String lname = request.getParameter("txtlstnm");
        String dob = request.getParameter("date");
        String pswd = request.getParameter("txtpass");
        String grp = request.getParameter("slctgrp");
        String country = request.getParameter("slctcountry");
        String city = request.getParameter("slctcity");
        String phone = request.getParameter("txtphone");
        String email = request.getParameter("txtemail");

        String sql = "insert into tbl_user(usrName,usrPass,firstName,lastName,DOB,phoneNo,Country,city_id,Email) values(\'" + uname + "\',md5(\'" + pswd + "\'),\'" + fname + "\',\'" + lname + "\',\'" + dob + "\',\'" + phone + "\',\'" + country + "\',(select tbl_city.city_id from tbl_city where tbl_city.City=\'" + city + "\'),\'" + email + "\');";

        String sqlGrp = "insert into user_group (usrName, grp_id) values(\'" + uname + "\',(select grp_id from tbl_group where grp_name=\'" + grp + "\'))";

        Connection con = null;
        PreparedStatement st = null;

        try {
            con = Database.cpds.getConnection();
            st = con.prepareStatement(sql);
            int rs = st.executeUpdate();

            if (rs == 1) {
                LOGGER.info("Registered a new user " + uname + " !");
                out.println(rs);
            } else {
                LOGGER.error("Error with registration data!");
            }
        } catch (Exception ex) {
            LOGGER.error("Error occured in user registration..", ex);
        } finally {
            try{
                LOGGER.trace("Closing connection..");
                con.close();
            } catch (SQLException e) {
                LOGGER.fatal("Error while closing connection..");
                e.printStackTrace();
            }
            try {
                LOGGER.trace("Closing Prepared statement..");
                st.close();
            } catch (SQLException e) {
                LOGGER.fatal("Error while closing prepared statement !", e);
            }
        }
    }
}
