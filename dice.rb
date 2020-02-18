require "sinatra"
require "sinatra/reloader"
def view(template); erb template.to_sym; end
before { puts "Parameters: #{params}" }  

get "/" do
    @rand1 = rand(1..6)
    @rand2 = rand(1..6)
    view "dice" # embedded Ruby in HTML

  # "<h1>Die 1 = #{rand1}, die 2 = #{rand2}; total = #{total}</h1>"
end
