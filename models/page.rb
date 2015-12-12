
class Page
  include MongoMapper::Document
  before_save :make_slug
  # а еще необходима проверка на "неправильные символы в строке slug"
  key :title,String
  key :slug, String
  key :body, String
  key :login_only, Boolean
  timestamps!
  
  private
  def make_slug
    self.slug ||= title.to_url
  end
end
