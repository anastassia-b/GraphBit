class CreateDatasets < ActiveRecord::Migration[5.1]
  def change
    create_table :datasets do |t|
      t.integer :user_id
      t.string :title
      t.text :data
      t.timestamps
    end
    add_index :datasets, :user_id
  end
end
