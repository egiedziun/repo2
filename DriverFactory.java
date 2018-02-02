package test3;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class DriverFactory {
    protected WebDriver driver;

    public DriverFactory() {
      System.setProperty("webdriver.chrome.driver", "C:\\Program Files\\Java\\chromedriver.exe");
      driver = new ChromeDriver();
      driver.manage().window().maximize();
      driver.get("http://automationpractice.com");
    }

    public void destroyDriver(){
        if (driver != null){
            driver.quit();
            driver = null;
    }}

}
