class Author < ActiveRecord::Base
  has_many :books

  attr_accessible :birthdate, :email, :firstname, :homepage_url, :lastname, :phone, :salutation
  
  def fullname
    "#{salutation} #{firstname} #{lastname}"
  end
  
  def to_s
    fullname
  end
end
