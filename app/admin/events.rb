ActiveAdmin.register Event do

  index do
      column :title
      column :time
      default_actions
    end
end
