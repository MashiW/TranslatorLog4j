package mytranslator;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.Connection;
import java.sql.SQLException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class LoginListener implements ServletContextListener {
    /**
     * coventntext listener class for database connection
     */
    private  static final Logger logger= LogManager.getLogger(LoginListener.class);

    public void contextInitialized(ServletContextEvent event) {
        /**
         * object creation from propertyReader
         */
        PropertyReader propobj = new PropertyReader();

        logger.trace("Connecting to database..");

        String dburl = propobj.getproperty("db.url"); //  url of the database
        String database = propobj.getproperty("db.database");//database name
        String dbUname = propobj.getproperty("db.db_uname");// user name for database
        String dbPasswd = propobj.getproperty("db.db_pswd");// password for the database

        Database db = new Database(dburl, database, dbUname, dbPasswd);
    }

    public void contextDestroyed(ServletContextEvent arg1) {
        /**
         * Database connection close in the centext destroy
         */
        Connection conn = Database.getConn();
        if (conn != null) {
            try {
                logger.info("Closing db connection..");
                conn.close();
            } catch (SQLException ex) {
                logger.fatal("Error while closing db connection, ", ex);
            }
        }

    }

}