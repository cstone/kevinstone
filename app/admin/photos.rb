ActiveAdmin.register Photo do

  index do
    selectable_column
    column :photo_image do |image|
      image_tag(image.photo_image.url(:thumb))
    end
    column :title
    column :allow_comments
    default_actions
  end



  show do |photo|
    attributes_table do
      row :id
      row :title
      row :description do
        simple_format photo.description
      end
      row :photo_image do
        image_tag(photo.photo_image.url(:thumb))
      end
      row :allow_comments
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
  
end
