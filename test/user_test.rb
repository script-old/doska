require_relative "spec_helper.rb"

describe User do
  after do
    User.delete_all
  end
  let(:user) {User.new}
  let(:email) {"email@mail.com"}
  let(:fname) {"First"}
  let(:lname) {"Last"}
  let(:phone) {89112223344}
  it "#make new user" do
    user.new?.must_be :==, true
  end
  it "#make uniq uuid for activation" do
    user.phone 
    user.save(:validate => false)
    user.activate_url.wont_be_nil
  end
  it "#check phone if present" do
    user.valid?.must_be :==, false #если телефон и ящик не представлен - нет котнактов
    user.phone = 7912
    user.valid?.must_be :==, false #телефон не подходит
    user.phone = phone
    user.valid?.must_be :==, true #телефон есть и он проходит проверку
    user.phone = ""
    user.email = email
    user.valid?.must_be :==, true #email есть и он проходит проверку
    user.phone = phone
    user.valid?.must_be :==, true #email и телефон есть и они проходят проверку
  end

end
