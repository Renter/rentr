class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :date_ranges

  has_attached_file :main_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :main_image, :content_type => /\Aimage\/.*\Z/


  def compile_address
    "#{number}"+" "+"#{street}"+", "+"#{city}"
  end
end
