class CreateSecciones < ActiveRecord::Migration
  def self.up
    create_table :secciones do |t|
      t.string :nombre
      t.integer :curso_id
      t.integer :periodo_id
      t.boolean :esta_activo

      t.timestamps
    end
  end

  def self.down
    drop_table :secciones
  end
end
