class Alumno < ActiveRecord::Base
    has_many :notas
    has_many :inscripciones

    def nombre_apellido
        nacionalidad + "-" + cedula.to_s + "  " + nombre + " " + apellido
    end

    # Validaciones
    validates_presence_of :nacionalidad, :cedula, :nombre, :apellido
end
