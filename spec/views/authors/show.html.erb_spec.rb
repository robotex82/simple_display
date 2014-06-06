require 'spec_helper'

describe "authors/show" do
  before(:each) do
    @author = assign(:author, stub_model(Author,
      :salutation => "Mr.",
      :firstname => "John",
      :lastname => "Doe",
      :phone => "+49 69 123456789",
      :email => "john.doe@example.com"
    ))
  end

  it "renders virtual attributes" do
    render

    expect(rendered).to have_css('li span.value.author-fullname', :text => @author.fullname ) 
#    rendered.should match(/Salutation/)
#    rendered.should match(/Firstname/)
#    rendered.should match(/Lastname/)
#    rendered.should match(/Phone/)
#    rendered.should match(/Email/)
  end
end
