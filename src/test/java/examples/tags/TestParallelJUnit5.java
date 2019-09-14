package examples.tags;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

@KarateOptions(tags = {"~@tagdemo"})
public class TestParallelJUnit5 {
    @Test

    public void testParallel(){
        String karateOutputPath = "target/surefire-reports";
        Results results = Runner.parallel(getClass(),3,karateOutputPath);
        TestParallel.generateReport(karateOutputPath);
        assertTrue(results.getFailCount()==0,results.getErrorMessages());
    }
}
