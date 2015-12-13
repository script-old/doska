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
    user.save
    user.activate_url.wont_be_nil
  end
  it "#check phone if present" do
    user.valid?.must_be :==, true #если телефон не представлен - все хорошо
    user.phone = 7912
    user.valid?.must_be :==, false #телефон не подходит
    user.phone = phone
    user.valid?.must_be :==, true #телефон есть и он проходит проверку
  end

end
