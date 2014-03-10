ActiveAdmin.register Video do

  index do
    selectable_column
    column :title
    column :source
    column :allow_comments
    default_actions
  end
  
end
