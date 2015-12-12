class Page
  include MongoMapper::Document
  key :title,String
  key :slug, String
  key :body, String
  key :login_only, Boolean
  timestamps!
end
