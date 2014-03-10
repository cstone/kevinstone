ActiveAdmin.register DynamicContent do

  index do
    column :title
    column :key
    column :value
    default_actions
  end

end
