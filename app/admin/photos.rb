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
  
end
