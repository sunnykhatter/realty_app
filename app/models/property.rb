class Property < ActiveRecord::Base
has_many :photos
before_save :titleize_address
geocoded_by :full_address
after_validation :geocode
accepts_nested_attributes_for :photos

private


def titleize_address
	self.address =	self.address.titleize
end

def full_address
	"#{self.address}, #{self.city}, #{self.postal_code}"
end
end
