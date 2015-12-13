require 'securerandom'
class User
  include MongoMapper::Document
  before_save :generate_uniq_url
  after_save :send_new_email  #Необходимо заменить и сделать логику на случай активации по телефону
  key :first_name, String
  key :last_name, String
  key :email, String#, :unique => true
  key :phone, Integer#, :format => /(7|8)9\d{9}/ #не дает сохранить пользователя без обязательного ввода. Это плохо
  key :bio, String
  key :password, String
  key :active, Boolean
  key :last_visit, Time
  key :activate_url, String, :unique => true
  
  timestamps!
  
  many :adverts
  many :user_views
  ###########validations############
  validate :phone_validation

  def phone_validation
    if !phone.blank?
      if /(7|8)9\d{9}/ !~ phone.to_s
        errors.add( :phone, "Номер телефона неправильный")
      end
    end
  end
  
  ##################################
  
  
  
  private
  def generate_uniq_url
    self.activate_url = SecureRandom.uuid + "-" + SecureRandom.hex(4)
  end
  def send_new_email
    puts "User #{first_name} created" #Заглушка. 
  end
end
