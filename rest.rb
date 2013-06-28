require 'httparty'

@last_response = HTTParty.get('http://api-gena01.test.dev.us1.sfmc.co/v0/core/demos/1')
puts @last_response.headers.inspect









