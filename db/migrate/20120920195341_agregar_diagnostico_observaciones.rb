class AgregarDiagnosticoObservaciones < ActiveRecord::Migration
  def up
    add_column :diagnosticos, :observacion, :text
  end

  def down
    remove_column :diagnosticos, :observacion, :text
  end
end
