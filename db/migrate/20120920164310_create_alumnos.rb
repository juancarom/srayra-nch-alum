class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.integer :documento
      t.string :apellidos
      t.string :nombres
      t.integer :sexo_id
      t.date :fecha_de_nacimiento
      t.integer :obra_social_id

      t.timestamps
    end
  end
end
