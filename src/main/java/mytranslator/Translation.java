package mytranslator;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

public class Translation {
    /*
    * getLangs = method for getting the language list
    * */
    PropertyReader propobj =new PropertyReader();
    @Deprecated
    public ArrayList<String> getLangs() throws IOException {

        HttpClient httpClient = new DefaultHttpClient();
        HttpGet request = new HttpGet(propobj.getproperty("yandex.getlangs.list"));
        HttpResponse response = null;
        try {
            response = httpClient.execute(request);
        } catch (IOException e) {
            throw e;
        }

        // Get the response
        InputStream input = null;
        try {
            input = response.getEntity().getContent();
        } catch (IOException e) {
            throw e;
        }

        //creating DOM object
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = null;
        try {
            builder = dbf.newDocumentBuilder();
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        }

        Document doc = null;
        try {
            doc = builder.parse(input);
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //Element root = doc.getDocumentElement();
        NodeList nameNodesList = doc.getElementsByTagName("Item"); //tagname =Item

        //get result to an array list
        ArrayList<String> listValues = new ArrayList<String>();

        //get the Item tag's attribute value
        for (int i = 0; i < nameNodesList.getLength(); i++) {
            listValues.add(nameNodesList.item(i).getAttributes().getNamedItem("value").getNodeValue());
        }

        return listValues;
    }

    public String textTranslate(String fromLang,String toLang,String fromText) throws IOException {

        PropertyReader propobj2 =new PropertyReader();

        String yndxUrl = propobj2.getproperty("yandex.url");
        String apiKey =propobj2.getproperty("yandex.api.key");
        String transtext;
        String url = yndxUrl + apiKey + "&text=" + fromText + "&lang=" + fromLang + "-" + toLang;
        HttpClient client = new DefaultHttpClient();

        HttpGet rq = new HttpGet(url);
        HttpResponse resp = null;
        try {
            resp = client.execute(rq);
        } catch (IOException e) {
            throw e;
        }

        //get response
        InputStream input2 = null;
        try {
            input2 = resp.getEntity().getContent();
        } catch (IOException e) {
            e.printStackTrace();
        }

        //creating DOM
        DocumentBuilderFactory dbf2 = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder2 = null;
        try {
            builder2 = dbf2.newDocumentBuilder();
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        }

        Document doc2 = null;
        try {
            doc2 = builder2.parse(input2);

        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

        NodeList textNodelist = doc2.getElementsByTagName("text");
        transtext = String.valueOf(textNodelist.item(0).getTextContent());

        return transtext;
    }
}

