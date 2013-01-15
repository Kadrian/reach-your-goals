class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :title
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
