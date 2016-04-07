package mytranslator;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.sql.*;

public class Database {
    /**
     * Database connection class
     */
    private static Connection conn;
    private static final Logger logger = LogManager.getLogger(Database.class);

    public Database(String dburl, String database, String dbUname, String dbPasswd) {

        try {
            Class.forName("com.mysql.jdbc.Driver");

            this.conn = DriverManager.getConnection(dburl+ database, dbUname, dbPasswd);

        } catch (ClassNotFoundException e) {
            logger.error("Error while connecting to database..", e);
        } catch (SQLException e) {
            logger.fatal("SQL error for connecting to database..",e);
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
