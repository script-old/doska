require 'mongo_mapper'

Dir["models/*.rb"].each {|file| require file }
