package com.intive.patronage.Tests;
import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import org.openqa.selenium.support.ui.ExpectedConditions;

/**
 * Created by EiM on 2018-01-11.
 */
public class SearchGoogle {

    public SearchGoogle() {
        System.out.println("We are inside constructor SearchGoogle class");
    }
    
   
    @Test
    public void google_Search()
    {
        System.setProperty("webdriver.gecko.driver","geckodriver.exe");
    	
    	String expectedlink = "https://www.intive.com/en";
    			

    			WebDriver driver;
    	driver = new FirefoxDriver();
    	driver.get("http://www.google.com");
    	
    	
    	WebElement element = driver.findElement(By.name("q"));
    	element.sendKeys("intive\n");
    	element.submit();
    	
    	
    	WebElement myDynamicElement = (new WebDriverWait(driver, 10)).until(ExpectedConditions.presenceOfElementLocated(By.id("resultStats")));
    	
    	
    	List<WebElement> findElements = driver.findElements(By.xpath("//*[@id='rso']//h3/a"));
    	
    	
    	String first_link = findElements.get(0).getAttribute("href");
    	
    	
    	assertEquals(first_link, expectedlink);
    	
    	driver.quit();
    }
}

