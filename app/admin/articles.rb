ActiveAdmin.register Article do

  index do
    selectable_column
    column :article_image do |image|
      image_tag(image.article_image.url(:thumb))
    end
    column :title
    column :allow_comments
    default_actions
  end



  filter :title
  filter :body
  filter :allow_comments

end
