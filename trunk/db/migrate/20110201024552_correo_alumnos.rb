class CorreoAlumnos < ActiveRecord::Migration
  def self.up
     add_column :alumnos, :correo, :string
  end

  def self.down
     drop_column :alumnos, :correo
  end
end
