require "sinatra"
require "appsignal"

set :bind, "0.0.0.0"

get "/" do
  puts "Request to /"
  "Hi from sinatra"
end
