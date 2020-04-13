package examples.swapi;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
//import cucumber.api.CucumberOptions; -- cucumber.api has been deprecated
import org.junit.runner.RunWith;

@RunWith(Karate.class)
// You can use the CucumberOptions tag to select which feature file should be run
//@CucumberOptions (features = "classpath:examples.swapi/GetPerson.feature")
@KarateOptions (features = "classpath:examples.swapi/GetPerson.feature")

public class peopleRunner {
}
