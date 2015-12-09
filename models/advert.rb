class Advert
  include MongoMapper::Document
  key :title, String
  key :body, String
  key :active, Boolean
  key :created, Time 
  
  belongs_to :user
  many :advert_views
  many :images
  belongs_to :category
end
