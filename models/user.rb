class User
  include MongoMapper::Document
  key :first_name, String
  key :las_name, String
  key :email, String
  key :bio, String
  key :password, String
  key :active, Boolean
  key :created, Time
  key :last_visit, Time
  key :activate_url, String
  
  many :adverts
  many :user_views
end
