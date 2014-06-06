require 'spec_helper'

describe "authors/new" do
  before(:each) do
    assign(:author, stub_model(Author,
      :salutation => "MyString",
      :firstname => "MyString",
      :lastname => "MyString",
      :phone => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new author form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", authors_path, "post" do
      assert_select "input#author_salutation[name=?]", "author[salutation]"
      assert_select "input#author_firstname[name=?]", "author[firstname]"
      assert_select "input#author_lastname[name=?]", "author[lastname]"
      assert_select "input#author_phone[name=?]", "author[phone]"
      assert_select "input#author_email[name=?]", "author[email]"
    end
  end
end
