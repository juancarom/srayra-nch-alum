class CreateDomicilios < ActiveRecord::Migration
  def change
    create_table :domicilios do |t|
      t.integer :localidad_id
      t.string :calle
      t.integer :numero
      t.integer :piso
      t.string :dpto

      t.timestamps
    end
  end
end
