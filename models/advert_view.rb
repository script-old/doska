class AdvertView
  include MongoMapper::EmbeddedDocument
  key :day_views, Integer
  key :date, Time
  
  belongs_to :advert
end
