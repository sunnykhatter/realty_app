class Photo < ActiveRecord::Base
belongs_to :property
validates 	:property, presence: true
mount_uploader :image, ImageUploader

end
