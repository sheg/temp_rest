Feature: Network post service test
  Test services that will save network post information

  Background:
    Given the service is located at "http://localhost:9999"
    And the system knows about the following posts:
          | network    |        post            |
          | facebook   | hello facebook friends |
          | twitter    | hello twitter friends  |

  Scenario: list posts
    When the client requests GET /posts
    Then the response code should return as "200"
    Then the response should be JSON:
      """
      [
        {"network": "facebook", "post": "hello facebook friends"},
        {"network": "twitter", "post": "hello twitter friends"}
      ]
      """
