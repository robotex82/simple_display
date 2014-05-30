class Book < ActiveRecord::Base
  attr_accessible :description, :price, :title
end
