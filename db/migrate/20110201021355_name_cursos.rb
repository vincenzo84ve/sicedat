class NameCursos < ActiveRecord::Migration
  def self.up
      add_column :cursos, :name, :string
  end

  def self.down
      drop_column :cursos, :name
  end
end
