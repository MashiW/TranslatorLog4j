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

    private static final Logger LOGGER = LogManager.getLogger(PropertyReader.class);

    Properties properties = new Properties();
    ClassLoader classLoader = getClass().getClassLoader();

    InputStream stream = classLoader.getResourceAsStream("system.properties");

    public String getproperty(String prop) {

        try {
            LOGGER.info("Loading properties.. " + prop);
            properties.load(stream);
        } catch (IOException e) {
            LOGGER.error("Error while getting properties..");
        }

        return properties.getProperty(prop);
    }

    public void closeStream() {

        if (stream != null) {
            try {
                LOGGER.trace("Closing property stream..");
                stream.close();
            } catch (IOException ex) {
                LOGGER.fatal("Error while closing property stream..", ex);
            }
        }

    }
}
