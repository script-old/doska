require_relative "spec_helper.rb"

describe Page, "page model" do
  before do
    #puts Time.now
  end 
  after do 
    Page.delete_all
  end
  let(:page) {Page.new}
  let(:title) {"first title"}
  
  it "#not empty title" do
    page.title.wont_be_nil
  end
  
  it "#making new title" do
    page.title = title
    page.title.must_be_kind_of String
    page.title.to_s.must_equal title.to_s
  end
  
  it "#making slug after save" do
    page.title = title
    page.save
    page.slug.wont_be_nil
    page.slug.to_s.must_equal title.to_url.to_s
  end
  
  it "#test default title" do
    page.title.to_s.must_equal "New Page"
  end
  
  it "#test default states" do
    page.active?.must_be :==, false
    page.login_only?.must_be :==, false
  end
  
  it "#test slug with default title" do
    page.save
    page.slug.must_include "new-page"
    page.slug.must_match /\d{10}/
  end




end
