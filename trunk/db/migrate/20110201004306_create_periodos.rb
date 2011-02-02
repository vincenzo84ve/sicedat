class CreatePeriodos < ActiveRecord::Migration
  def self.up
    create_table :periodos do |t|
      t.string :nombre
      t.text :descripcion
      t.boolean :esta_abierto
      t.boolean :esta_activo

      t.timestamps
    end
  end

  def self.down
    drop_table :periodos
  end
end
