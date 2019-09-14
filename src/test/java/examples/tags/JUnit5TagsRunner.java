package examples.tags;

import com.intuit.karate.junit5.Karate;

 class JUnit5TagsRunner {

    @Karate.Test
    Karate testPrintFeature(){
        return new Karate().feature("PrintMetadata2.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testTags(){
        return new Karate().tags("@smoke").relativeTo(getClass());
    }

    @Karate.Test
    Karate testFullPath(){
        return new Karate()
                .feature("classpath:examples/tags/tags.feature")
                .tags("@version=2.3");
    }
}
