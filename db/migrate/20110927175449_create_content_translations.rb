class CreateContentTranslations < ActiveRecord::Migration
  def change
    create_table :content_translations do |t|
      t.integer :language_id
      t.integer :content_id
      t.string :field_name
      t.text :content
      t.boolean :status

      t.timestamps
    end
  end
end
