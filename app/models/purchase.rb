class Purchase < ActiveRecord::Base
  belongs_to :region
  belongs_to :user
  has_and_belongs_to_many :product
end
