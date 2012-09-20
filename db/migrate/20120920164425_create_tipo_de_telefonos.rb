class CreateTipoDeTelefonos < ActiveRecord::Migration
  def change
    create_table :tipo_de_telefonos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
