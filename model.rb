require 'mongo_mapper'
require 'mongo_mapper_tree'
require 'stringex'
#require 'bson_ext'
#$db = "doska"
MongoMapper.connection = Mongo::Connection.new('localhost', 27017)
MongoMapper.database = "doska"


Dir["./models/*.rb"].each {|file| require file }
