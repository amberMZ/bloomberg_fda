class Product < ActiveRecord::Base
  has_one :image_id
  has_and_belongs_to_many :purchase
end
