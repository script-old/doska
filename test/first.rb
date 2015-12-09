require 'rubygems'
require 'bundler/setup'
require 'pry'
load 'model.rb'

def cleanDB
  User.all.map(&:delete)
  Advert.all.map(&:delete)
  View.all.map(&:delete)
  UserView.all.map(&:delete)
  Category.all.map(&:delete)
  Image.all.map(&:delete)
end

def load_fix
  @u = User.new
  @a = Advert.new
  @i = Image.new
  @c = Category.new
end

binding.pry
