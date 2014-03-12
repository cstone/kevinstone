ActiveAdmin.register Page do
  controller do
    defaults :finder => :find_by_permalink
  end

  index do
    selectable_column
    column :page_image
    column :name
    column :permalink
    default_actions
  end


  show do |page|
    attributes_table do
      row :id
      row :name
      row :permalink
      row :content do
        simple_format page.content
      end
      row :page_image do
        image_tag(page.page_image.url(:thumb))
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
