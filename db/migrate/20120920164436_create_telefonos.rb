class CreateTelefonos < ActiveRecord::Migration
  def change
    create_table :telefonos do |t|
      t.integer :tipo_de_telefono_id
      t.integer :codigo_de_area
      t.integer :numero

      t.timestamps
    end
  end
end
