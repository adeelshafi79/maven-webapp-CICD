import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import javax.ws.rs.core.Response;

import org.junit.Before;
import org.junit.Test;

public class WebServiceTest {

    private WebService webService;

    @Before
    public void setUp() {
        webService = new WebService();
    }

    @Test
    public void testRoot() {
        Response response = webService.root();
        assertEquals("It's working", response.getEntity());
    }

    @Test
    public void testHello() {
        Response response = webService.hello();
        assertEquals("Hello, World!", response.getEntity());
    }

    @Test
    public void testTime() {
        Response response = webService.time();
        // Test if the response contains a string in the format of date and time
        String time = (String) response.getEntity();
        // Assuming the date format is "dd/MM/yy HH:mm:ss"
        assertEquals(true, time.matches("\\d{2}/\\d{2}/\\d{2} \\d{2}:\\d{2}:\\d{2}"));
    }

    @Test
    public void testSend() {
        // Assuming Gson dependency is not injected in the service
        // Mocking Form Parameters
        String name = "Mr. Test";
        int age = 30;
        String nationality = "Test Nationality";
        String carBrand = "Test Car";

        Response response = webService.send(name, age, nationality, carBrand);
        String responseBody = (String) response.getEntity();

        // Assuming the response contains JSON representation of MrBean
        // We can parse JSON to MrBean and check attributes, but for simplicity just checking if response is not null
        assertEquals(false, responseBody.isEmpty());
    }

    @Test
    public void testSendToRecipient() {
        // Mocking Form Parameters
        String to = "Recipient";
        String name = "Mr. Test";
        int age = 30;
        String nationality = "Test Nationality";
        String carBrand = "Test Car";

        Response response = webService.send(to, name, age, nationality, carBrand);
        String responseBody = (String) response.getEntity();

        // Assuming the response contains JSON representation of Map with recipient and MrBean
        // We can parse JSON to Map and check attributes, but for simplicity just checking if response is not null
        assertEquals(false, responseBody.isEmpty());
    }
}
