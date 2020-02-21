package examples.performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._


class UserSimulation extends Simulation{

  val getSingleUser = scenario("GET method should return 200").exec(karateFeature("classpath:examples/performance/GETSingleUser.feature"))

  setUp(
    getSingleUser.inject(rampUsers(10).during(10 seconds))

  )
}
