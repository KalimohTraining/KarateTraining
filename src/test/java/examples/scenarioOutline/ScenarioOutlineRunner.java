package examples.scenarioOutline;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
//import cucumber.api.CucumberOptions; -- cucumber.api has been deprecated
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

/**
 *
 * @author pthomas3
 */
@RunWith(Karate.class)
//@CucumberOptions(features = "classpath:examples.scenarioOutline/Multiple-productUsingCSV.feature")
@KarateOptions(features = "classpath:examples.scenarioOutline/Multiple-productUsingCSV.feature")
public class ScenarioOutlineRunner {
    @BeforeClass
    public static void before() {
        System.setProperty("karate.env", "dev");
    }
}
