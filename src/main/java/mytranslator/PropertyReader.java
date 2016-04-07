package mytranslator;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by hsenid on 3/25/16.
 */
public class PropertyReader {

    private static final Logger logger= LogManager.getLogger(PropertyReader.class);

    Properties properties = new Properties();
    ClassLoader classLoader = getClass().getClassLoader();

    InputStream stream = classLoader.getResourceAsStream("system.properties");

        public String getproperty(String prop){

            try {
                logger.info("Loading properties..");
                properties.load(stream);
            }

            catch (IOException e) {
                logger.error("Error while getting properties..");
            }

            return properties.getProperty(prop);
        }

    public void closeStream(){

        if (stream != null)
        {
            try {
                logger.trace("Closing property stream..");
                stream.close();
            }
            catch (IOException ex){
               logger.fatal("Error while closing property stream..", ex);
            }
        }

    }
}
