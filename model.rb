require 'mongo_mapper'
require 'bson_ext'

Dir["models/*.rb"].each {|file| require file }
