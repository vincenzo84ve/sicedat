class CreateInscripciones < ActiveRecord::Migration
  def self.up
    create_table :inscripciones do |t|
      t.integer :alumno_id
      t.integer :seccione_id

      t.timestamps
    end
  end

  def self.down
    drop_table :inscripciones
  end
end
