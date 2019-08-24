package examples.swapi;

import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
// You can use the CucumberOptions tag to select which feature file should be run
@CucumberOptions (features = "classpath:examples.swapi/GetPerson.feature")

public class peopleRunner {
}
