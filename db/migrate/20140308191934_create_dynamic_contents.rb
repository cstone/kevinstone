class CreateDynamicContents < ActiveRecord::Migration
  def change
    create_table :dynamic_contents do |t|
      t.string :key
      t.string :title
      t.text :value

      t.timestamps
    end
  end
end
