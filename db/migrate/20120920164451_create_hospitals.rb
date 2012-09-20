class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.integer :localidad_id
      t.string :nombre

      t.timestamps
    end
  end
end
