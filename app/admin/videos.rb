ActiveAdmin.register Video do

  index do
    selectable_column
    column :title
    column :source
    column :allow_comments
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description, as: :html_editor
      f.input :source
      f.input :allow_comments
    end
    f.actions
  end

  show do |video|
    attributes_table do
      row :id
      row :title
      row :description do
        simple_format video.description
      end
      row :source
      row :allow_comments
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
  
end
