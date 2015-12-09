class Category
  include MongoMapper::Document
  plugin  MongoMapper::Plugins::Tree #:name => "Child 1", :parent => @root_1, :value => 1
  
  key :title, String
  key :slig, String
  key :description, String
  
  many :adverts
end
