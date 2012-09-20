class CreateLocalidads < ActiveRecord::Migration
  def change
    create_table :localidads do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
