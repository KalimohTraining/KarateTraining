package examples.tags;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)

@KarateOptions(tags = {"@region=GB"})

public class TagsRunner {

}
