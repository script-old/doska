class User
  include MongoMapper::Document
  key :first, String
  key :last, String
  key :email, String
  key :bio, String
  key :password, String
  key :active, Boolean
  key :created, Time
  key :last_visit, Time
  key :activate_url, String
  
  many :adverts
  many :user_logins
end
