class UserView
  include MongoMapper::Document
  key :start_login, Time
  key :stop_login, Time
  key :ip, String
  key :info, String
  
  belongs_to :user
end
