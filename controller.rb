require 'sinatra'

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

get '/pages/:slug' do |slug|
  #@page = Page.find(:slug => slug)
  #if @page
    #render page
  #else
    #render error 404
  #end
end

get '/category/:url' do |url|
  #@cat = Category.find(:url => url)
end

get '/adv/:adv_slug/?' do |adv_slug|

end 
