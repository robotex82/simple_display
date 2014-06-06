require 'spec_helper'

describe "books/index_as_list" do
  before(:each) do
    assign(:books, [
      stub_model(Book,
        :title => "Title",
        :price => "9.99",
        :description => "MyText"
      ),
      stub_model(Book,
        :title => "Title",
        :price => "9.99",
        :description => "MyText"
      )
    ])
  end

  it "renders the titles in a table" do
    render
    expect(rendered).to have_css('li', :text => 'Title', :count => 2)
  end
  
  it "renders the prices in a table" do
    render
    expect(rendered).to have_css('li', :text => '$9.99', :count => 2)
  end
  
  it "renders the titles in a table" do
    render
    expect(rendered).to have_css('li', :text => 'MyText', :count => 2)
  end
end
