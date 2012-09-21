class Agregar < ActiveRecord::Migration
  def up
    add_column :alumnos, :region_id, :integer
    add_column :alumnos, :escuela_id, :integer
  end

  def down
    remove_column :alumnos, :region_id
    remove_column :alumnos, :escuela_id
  end
end
