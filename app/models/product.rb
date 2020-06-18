class Product < ApplicationRecord
	has_many :lineitems

	
	before_destroy :make_sure_no_line_items_in_any_cart

	validates :name, :description, :image,  presence: true 
	validates :price, numericality: {greater_than_or_equal_to: 0.1}
	validates :image, allow_blank: true, format: {with: %r{\.{gif|jpeg|jpg|png}\Z}i, message: "must be GIf, JPEG, JPG and PNG images"}



  def make_sure_no_line_items_in_any_cart
  	if self.lineitems.empty?
  		return true
  	else
  		errors.add(:base, "line items present")
  		return false
  	end
  end

end
