class Article < ActiveRecord::Base
  attr_accessible :article_image, :body, :title, :remove_article_image

  mount_uploader :article_image, ArticleImageUploader

  default_scope order('created_at DESC')
end
