require 'sinatra'
require 'json'

class NetworkPostsApp < Sinatra::Base
  set :data do
    JSON.parse(File.read('posts.json'))
  end

  get '/posts' do
    content_type :json
    NetworkPostsApp.data.to_json
  end

  get '/clear_data' do
    File.truncate('posts.json', 0)
  end
end