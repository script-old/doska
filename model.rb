require 'mongo_mapper'
#require 'bson_ext'
$db = "doska"

Dir["./models/*.rb"].each {|file| require file }
