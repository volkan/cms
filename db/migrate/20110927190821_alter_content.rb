class AlterContent < ActiveRecord::Migration
  def up
    add_column :contents, :status, :boolean
  end

  def down
    remove_colmn :contents, :status, :boolean
  end
end
