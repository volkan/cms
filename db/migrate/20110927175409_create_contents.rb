class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :site_id
      t.integer :parent_id
      t.integer :category_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
