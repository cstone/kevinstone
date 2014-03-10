ActiveAdmin.register DynamicContent do

  index do
    selectable_column
    column :title
    column :key
    column :value
    default_actions
  end

  filter :title
  filter :key
  filter :value
  filter :created_at
  filter :updated_at

end
