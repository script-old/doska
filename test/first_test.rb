require_relative "spec_helper.rb"

describe Page, "page model" do
  before do
    puts Time.now
  end 
  after do 
    Page.delete_all
  end
  let(:page) {Page.new}
  let(:title) {"first title"}
  
  it "#empty test" do
    page.title.must_be_nil
  end
  
  it "#making new title" do
    page.title = title
    page.title.must_be_kind_of String
    page.title.to_s.must_equal title.to_s
  end




end
