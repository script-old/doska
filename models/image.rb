class Image
  include MongoMapper::Document
  
  key :url, String
  key :path, String
  
  timestamps!
  
  belongs_to :advert
end
