class CreateContentCategories < ActiveRecord::Migration
  def change
    create_table :content_categories do |t|
      t.string :title
      t.boolean :status

      t.timestamps
    end
  end
end
