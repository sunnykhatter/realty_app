class Property < ActiveRecord::Base

before_save :titleize_address
geocoded_by :address
after_validation :geocode

private


def titleize_address
	self.address =	self.address.titleize
end

end
