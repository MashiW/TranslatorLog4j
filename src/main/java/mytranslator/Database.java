package mytranslator;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.*;

public class Database {
    private static final Logger LOGGER = LogManager.getLogger(Database.class);
    /**
     * Database connection class
     */
    private static Connection conn;
    private static PropertyReader propObj = new PropertyReader();

    public static void connectDatabase(String dburl, String database, String dbUname, String dbPasswd) {

        try {
            LOGGER.info("Connecting to database..");
            Class.forName(propObj.getproperty("db.con.driver"));

            conn = DriverManager.getConnection(dburl + database, dbUname, dbPasswd);

        } catch (ClassNotFoundException e) {
            LOGGER.error("Error while connecting to database..", e);
        } catch (SQLException e) {
            LOGGER.fatal("SQL error for connecting to database..", e);
        }
    }

    public static Connection getConn() {
        return conn;
    }

    public ResultSet runSql(String sql) throws SQLException {
        PreparedStatement sta = conn.prepareStatement(sql);
        return sta.executeQuery(sql);
    }
}
