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

public class UpdateUser extends HttpServlet {

    private static final Logger LOGGER = LogManager.getLogger(UpdateUser.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String uname = request.getParameter("txtunameUpd");
        String fname = request.getParameter("txtfnameUpd");
        String lname = request.getParameter("txtlstnmUpd");
        String dob = request.getParameter("dateUpdt");
        String country = request.getParameter("slctcountryUpd");
        String phone = request.getParameter("txtphoneUpd");
        String email = request.getParameter("txtemailUpd");

        out.println(fname);

        String sql = "update tbl_user SET firstName=\'" + fname + "\',lastName=\'" + lname + "\',DOB=\'" + dob + "\',phoneNo=\'" + phone + "\',Country=\'" + country + "\',Email=\'" + email + "\' WHERE usrName=\'" + uname + "\';";

        Connection con = null;
        PreparedStatement st = null;

        try {
            con = Database.cpds.getConnection();
            st = con.prepareStatement(sql);
            int rs = st.executeUpdate();

            if (rs == 1) {
                LOGGER.trace("Updated user" + uname + ";");
                out.print(rs);
            } else {
                LOGGER.error("Error: cannot update user" + uname + ";");
                out.println("cannot update user " + uname + "  " + rs);
            }

        } catch (Exception e) {
            LOGGER.error("Error in user updation..", e);
        } finally {
            try {
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
