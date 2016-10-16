class Region < ActiveRecord::Base
  has_one :image
  has_many :purchases
  has_many :recalls
end
