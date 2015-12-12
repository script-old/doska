class Category
  include MongoMapper::Document
  plugin  MongoMapper::Plugins::Tree #:name => "Child 1", :parent => @root_1, :value => 1
  before_save :make_cat_slug #different name from page method
  after_save :make_full_slug #только после сохранения можно получить всех "родителей" и их данные. 
  key :title, String
  key :slug, String
  key :full_slug, String
  key :description, String
  
  many :adverts
  private
  def make_cat_slug    
    self.slug ||= title.to_url    
  end
  def make_full_slug
    if self.root?
      self.full_slug = self.slug
    else
      self.full_slug = self.ancestors.map(&:slug).join("/") + "/" + self.slug 
    end
  end
end
