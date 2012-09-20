class CreateDiagnosticos < ActiveRecord::Migration
  def change
    create_table :diagnosticos do |t|
      t.integer :alumno_id
      t.integer :hospital_id
      t.date :fecha_de_diagnostico
      t.boolean :biopsia

      t.timestamps
    end
  end
end
