package auth.jwt;


import com.intuit.karate.junit4.Karate;
import cucumber.api.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@CucumberOptions (features = "classpath:auth/jwt/jwtAuth.feature")
public class authRunner {
}
