require 'mongo_mapper'
require 'mongo_mapper_tree'
#require 'bson_ext'
$db = "doska"

Dir["./models/*.rb"].each {|file| require file }
