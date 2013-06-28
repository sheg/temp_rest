After do |scenario|
  HTTParty.get('http://localhost:9999/clear_data')
end