require 'sinatra'

Dir["./controllers/*.rb"].each {|file| require file }
get '/' do

end

get '/login/?' do
end

post '/login/?' do

end

get '/logout/?' do

end

get '/register/?' do

end

post '/register/?' do

end


get '/category/:url' do |url|
  #@cat = Category.find(:url => url)
end

get '/adv/:adv_slug/?' do |adv_slug|

end 
