require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "Title",
      :price => "9.99",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should have_css('dd', :text => "Title")
    rendered.should have_css('dd', :text => "9.99")
    rendered.should have_css('dd', :text => "MyText")
  end
end
