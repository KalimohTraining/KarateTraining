package examples;

//import com.intuit.karate.junit4.Karate;
//import org.junit.runner.RunWith;
//
//@RunWith(Karate.class)
//public class ExamplesTest {
//    // this will run all *.feature files that exist in sub-directories
//    // refer to https://github.com/intuit/karate#naming-conventions
//    // for folder-structure recommendations and naming conventions
//}


import com.intuit.karate.cucumber.CucumberRunner;
import com.intuit.karate.cucumber.KarateStats;
import cucumber.api.CucumberOptions;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.Assert.assertTrue;

/**
 *
 * @author pthomas3
 */
@CucumberOptions(tags = {"~@ignore"}) // important: do not use @RunWith(Karate.class) !
public class ExamplesTest {
//    @BeforeClass
//    public static void beforeClass() throws Exception {
//        TestBase.beforeClass();
//    }

    @Test
    public void testParallel() {
        String karateOutputPath = "target/surefire-reports";
        KarateStats stats = CucumberRunner.parallel(getClass(), 5, karateOutputPath);
        generateReport(karateOutputPath);
        assertTrue("there are scenario failures", stats.getFailCount() == 0);
    }

    private static void generateReport(String karateOutputPath) {
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
        List<String> jsonPaths = new ArrayList(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("target"), "demo");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }}
