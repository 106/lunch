class Restaurant < ActiveRecord::Base
  attr_accessible :building, :city, :description, :name, :phone, :street, :zip
  has_many :menus
end
