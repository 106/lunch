class Restaurant < ActiveRecord::Base
  attr_accessible :building, :city, :description, :name, :phone, :street, :zip
end
