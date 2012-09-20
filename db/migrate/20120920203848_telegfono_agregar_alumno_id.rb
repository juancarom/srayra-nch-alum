class TelegfonoAgregarAlumnoId < ActiveRecord::Migration
  def up
    add_column :telefonos, :alumno_id, :integer
  end

  def down
    remove_column :telefonos, :alumno_id
  end
end
