class Video < ActiveRecord::Base
  attr_accessible :allow_comments, :description, :source, :title

  default_scope order('created_at DESC')
end
