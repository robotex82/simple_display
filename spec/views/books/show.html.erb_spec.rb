require 'spec_helper'

describe "books/show" do
  before(:each) do
    @author = stub_model(Author,
      :id => '1',
      :to_s => 'Mr. John Doe'
    )
    
    @book = assign(:book, stub_model(Book,
      :title => "MyTitle",
      :price => "9.99",
      :description => "MyText",
      :author => @author
    ))
  end

  it "renders the title label" do
    render
    expect(rendered).to have_css('dt', :text => 'Title')
  end

  it "renders the title" do
    render
    expect(rendered).to have_css('dd', :text => 'MyTitle')
  end

  it "renders the price label" do
    render
    expect(rendered).to have_css('dt', :text => 'Price')
  end
  
  it "renders the prices" do
    render
    expect(rendered).to have_css('dd', :text => '$9.99')
  end

  it "renders the description label" do
    render
    expect(rendered).to have_css('dt', :text => 'Description')
  end

  it "renders the description" do
    render
    expect(rendered).to have_css('dd', :text => 'MyText')
  end

  it "links to associated author" do
    render
    expect(rendered).to have_xpath("a[@href='/authors/#{@author.id}']")
  end
end
