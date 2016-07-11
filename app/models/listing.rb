class Listing < ActiveRecord::Base
	 has_attached_file :image, styles: { medium: "200x", thumb: "100x100>" }, default_url: "default.jpg"
	 validates_attachment :image, content_type: { content_type: /\Aimage\/.*\Z/ }
	 validates :name, :description, :price, presence: true	 
	 validates :price, numericality: {greater_than: 0}
	 validates_attachment_presence :image
 end









