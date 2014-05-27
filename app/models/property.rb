class Property < ActiveRecord::Base
has_many :photos, :dependent => :destroy
before_save :titleize_address
geocoded_by :full_address
after_validation :geocode
accepts_nested_attributes_for :photos

	# enable nested attributes for photos through album class
	accepts_nested_attributes_for :photos, allow_destroy: true

private


def titleize_address
	self.address =	self.address.titleize
end

def full_address
	"#{self.address}, #{self.city}, #{self.postal_code}"
end
end
