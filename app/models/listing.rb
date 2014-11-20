class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :date_ranges
end
