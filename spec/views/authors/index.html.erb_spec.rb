require 'spec_helper'

describe "authors/index" do
  before(:each) do
    assign(:authors, [
      stub_model(Author,
        :salutation => "Salutation",
        :firstname => "Firstname",
        :lastname => "Lastname",
        :phone => "Phone",
        :email => "Email"
      ),
      stub_model(Author,
        :salutation => "Salutation",
        :firstname => "Firstname",
        :lastname => "Lastname",
        :phone => "Phone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of authors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Salutation".to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
