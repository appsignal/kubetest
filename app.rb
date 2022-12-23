require "sinatra"
require "appsignal"
require "appsignal/integrations/sinatra"

set :bind, "0.0.0.0"

get "/" do
  puts "Request to /"
  "Hi from sinatra with AppSignal on #{ENV["APPSIGNAL_PUSH_API_KEY"]}"
end
