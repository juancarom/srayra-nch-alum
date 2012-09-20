class CreateObraSocials < ActiveRecord::Migration
  def change
    create_table :obra_socials do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
