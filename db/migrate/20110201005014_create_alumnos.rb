class CreateAlumnos < ActiveRecord::Migration
  def self.up
    create_table :alumnos do |t|
      t.string :nacionalidad
      t.integer :cedula
      t.string :nombre
      t.string :apellido
      t.boolean :esta_activo

      t.timestamps
    end
  end

  def self.down
    drop_table :alumnos
  end
end
