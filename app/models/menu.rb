class Menu < ActiveRecord::Base
  attr_accessible :title, :restaurant_id
  belongs_to :restaurant
end
