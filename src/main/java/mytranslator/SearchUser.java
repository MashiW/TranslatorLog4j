package mytranslator;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
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
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by hsenid on 4/27/16.
 */
public class SearchUser extends HttpServlet {

    private static final Logger LOGGER = LogManager.getLogger(Login.class);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

        //response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String uname = request.getParameter("usrSearch");

        //String sql = "select * from tbl_user where usrName=\'" + uname +"\';";
        String sql = "select * from tbl_user;";
        JsonObject jsonObj;
        JsonArray jsonArray = new JsonArray();
        Connection con;
        PreparedStatement st;
        ResultSet rs;

        try {
            con = Database.cpds.getConnection();
            st = con.prepareStatement(sql);
            rs = st.executeQuery();

            while (rs.next()) {
                jsonObj = new JsonObject();
                jsonObj.addProperty("usrnm", rs.getString(1));
                jsonObj.addProperty("usrfn", rs.getString(3));
                jsonObj.addProperty("usrln", rs.getString(4));
                jsonObj.addProperty("usrdob", rs.getString(5));
                jsonObj.addProperty("usrphone", rs.getString(6));
                jsonObj.addProperty("usrcntry", rs.getString(7));
                jsonObj.addProperty("usremail", rs.getString(8));
                jsonArray.add(jsonObj);
            }
            out.println(jsonArray);

        } catch (SQLException ex) {
            LOGGER.error("Error in username validate method..", ex);
        }

    }
}
