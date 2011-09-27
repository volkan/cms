class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :parent_id
      t.string :title
      t.string :url
      t.string :folder_name
      t.string :host_name
      t.boolean :status

      t.timestamps
    end
  end
end
