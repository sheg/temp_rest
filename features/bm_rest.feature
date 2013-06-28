Feature: BM REST service testing

  Background:
    Given the service is located at "http://api-gena01.test.dev.us1.sfmc.co"

  Scenario: test demo get
    When the client requests GET /v0/core/demos/1
    Then the response code should return as "200"
    Then the response should be JSON:
    """
        {"id":1,"name":"demo"}
    """
