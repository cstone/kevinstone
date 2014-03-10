ActiveAdmin.register Event do

  index do
      selectable_column
      column :title
      column :time
      default_actions
  end


  show do |event|
    attributes_table do
      row :id
      row :title
      row :description do
      simple_format event.description
    end
      row :venue
      row :address
      row :city
      row :state
      row :zip
      row :url
      row :time
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
