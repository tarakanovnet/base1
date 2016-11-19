class CreateTerritories < ActiveRecord::Migration[5.0]
  def change
    create_table :territories do |t|
      t.float :pos_x, array: true, default: [], :null => false
      t.float :pos_y, array: true, default: [], :null => false
      t.text :information

      t.timestamps
    end
  end
end
