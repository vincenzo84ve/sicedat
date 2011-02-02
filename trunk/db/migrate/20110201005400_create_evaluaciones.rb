class CreateEvaluaciones < ActiveRecord::Migration
  def self.up
    create_table :evaluaciones do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha_ini
      t.date :fecha_fin
      t.integer :seccione_id
      t.boolean :esta_activo

      t.timestamps
    end
  end

  def self.down
    drop_table :evaluaciones
  end
end
