class CreateNotas < ActiveRecord::Migration
  def self.up
    create_table :notas do |t|
      t.integer :alumno_id
      t.integer :evaluacione_id
      t.decimal :nota
      t.boolean :esta_activo

      t.timestamps
    end
  end

  def self.down
    drop_table :notas
  end
end
