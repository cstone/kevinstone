ActiveAdmin.register Event do

  index do
      selectable_column
      column :title
      column :time
      default_actions
    end
end
