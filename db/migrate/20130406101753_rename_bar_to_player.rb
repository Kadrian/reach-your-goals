class RenameBarToPlayer < ActiveRecord::Migration
  def change
    rename_table :bars, :players
  end
end
