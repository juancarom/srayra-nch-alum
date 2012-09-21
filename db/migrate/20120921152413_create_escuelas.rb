class CreateEscuelas < ActiveRecord::Migration
  def change
    create_table :escuelas do |t|
      t.integer :numero
      t.string :nombre

      t.timestamps
    end
  end
end
