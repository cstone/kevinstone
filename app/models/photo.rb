class Photo < ActiveRecord::Base
  attr_accessible :description, :photo_image, :title
end
