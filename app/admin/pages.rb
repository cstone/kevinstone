ActiveAdmin.register Page do
  controller do
    defaults :finder => :find_by_permalink
  end

  index do
    selectable_column
    if page.page_image.url
      column :page_image do |page|
        image_tag(page.page_image.url(:thumb))
      end
    end
    column :name
    column :permalink
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :permalink
      f.input :content, as: :html_editor
    end
    f.inputs "Image" do
      f.file_field :page_image
    end
    f.inputs "Remove Current Image" do
      f.input :remove_page_image, as: :boolean, label: 'Check here to remove the current image.'
    end
    f.actions
  end


  show do |page|
    attributes_table do
      row :id
      row :name
      row :permalink
      row :content do
        simple_format page.content
      end
      if page.page_image.url
        row :page_image do
          image_tag(page.page_image.url)
        end
      end

      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
