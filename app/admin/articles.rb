ActiveAdmin.register Article do


  form do |f|
    f.inputs do
      f.input :title
      f.input :body, as: :html_editor
    end
    f.inputs "Image" do
      f.file_field :article_image
    end
    f.inputs "Remove Current Image" do
      f.input :remove_article_image, as: :boolean, label: 'Check here to remove the current image.'
    end
    f.actions
  end



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
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

end
