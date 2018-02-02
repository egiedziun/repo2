package test3.pages;

import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

import static org.openqa.selenium.support.How.CLASS_NAME;


public class MyStorePage {
    private WebDriver driver;

    @FindBy(how = CLASS_NAME, using = "icon-user")
    private WebElement myInfo;

    @FindBy(how = How.CLASS_NAME, using = "page-subheading")
    private WebElement personalInfo;

    @FindBy(how = How.ID, using = "email")
    private  WebElement email;

    public MyStorePage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void assertInfo(){
        Assert.assertEquals("YOUR PERSONAL INFORMATION", personalInfo.getText());
        Assert.assertEquals("merida20@o2.pl", email.getAttribute("value"));
    }

}
