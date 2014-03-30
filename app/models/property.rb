class Property < ActiveRecord::Base

before_save :titleize_address

private


def titleize_address
	self.address =	self.address.titleize
end

end
