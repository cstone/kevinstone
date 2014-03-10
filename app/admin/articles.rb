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


  show do |article|
    attributes_table do
      row :id
      row :title
      row :body do
        simple_format article.body
      end
      row :allow_comments
      row :article_image do
        image_tag(article.article_image.url(:thumb))
      end
    end
    active_admin_comments
  end

end
