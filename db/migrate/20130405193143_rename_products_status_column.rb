class RenameProductsStatusColumn < ActiveRecord::Migration
  def change
    rename_column :bars, :status, :score
  end
end
