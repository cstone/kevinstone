ActiveAdmin.register Article do

  index do
    column :title
    column :article_image do |image|
      image_tag(image.article_image.url)
    end
    column :allow_comments
    default_actions
  end

  filter :title
  filter :body
  filter :allow_comments

end
