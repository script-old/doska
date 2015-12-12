
class Page
  include MongoMapper::Document
  before_save :make_slug
  # а еще необходима проверка на "неправильные символы в строке slug"
  key :title, String, :default => "New Page"
  key :slug, String
  key :body, String
  key :login_only, Boolean
  timestamps!
  
  private
  def make_slug 
    if title == "New Page" #ugly!
      self.slug ||= (title.to_url + "-" + Time.now.to_i.to_s)
    else
      self.slug ||= title.to_url
    end
    
  end
end
