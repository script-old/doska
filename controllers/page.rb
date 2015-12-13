get '/pages/:page_slug/?' do
  @page = Page.first(:slug => page_slug.to_s, :active => true)#Надо подумать обезопасном методе
  if @page
    erb :page
  else
    #halt
  end
end
get '/all_pages/?' do
  @pages = Pages.active.all
end
