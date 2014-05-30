# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    sequence(:title) { |i| "Book ##{i}" }
    price "9.99"
    description "MyText"
  end
end
