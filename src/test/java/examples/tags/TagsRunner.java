package examples.tags;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.runner.RunWith;

@RunWith(Karate.class)

@KarateOptions(tags = {"@spanish=Funcional"})

public class TagsRunner {

}
