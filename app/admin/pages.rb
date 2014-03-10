ActiveAdmin.register Page do

  index do
    selectable_column
    column :page_image do |image|
      image_tag(image.page_image.url(:thumb))
    end
    column :name
    column :permalink
    default_actions
  end
end
