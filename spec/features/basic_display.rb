require 'spec_helper'

feature 'Basic display' do
  before(:each) do
    @books = FactoryGirl.create_list(:book, 5)
  end
  
  scenario 'shows definition list items' do
    visit '/basic'
    
    expect(page).to have_css('dd', :text => 'Todo')
  end
end
