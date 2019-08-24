Feature:Match expected based on region value

  Scenario Outline: examples partitioned by tag
    * def vals = karate.tagValues
    * match vals.region[0] == '<expected>'

  @region=US
    Examples:
      | expected |
      | US       |

  @region=GB
    Examples:
      | expected |
      | GB       |