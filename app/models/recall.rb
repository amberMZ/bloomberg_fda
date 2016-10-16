class Recall < ActiveRecord::Base
  belongs_to :product
  belongs_to :level
  belongs_to :region
  has_one :contact
end
