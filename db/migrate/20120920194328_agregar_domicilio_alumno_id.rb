class AgregarDomicilioAlumnoId < ActiveRecord::Migration
  def up
    add_column :domicilios, :alumno_id, :integer
  end

  def down
    remove_column :domicilios, :alumno_id
  end
end
