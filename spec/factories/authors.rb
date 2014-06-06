# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :author do
    salutation "MyString"
    firstname "MyString"
    lastname "MyString"
    birthdate "2014-06-06"
    phone "MyString"
    email "MyString"
  end
end
