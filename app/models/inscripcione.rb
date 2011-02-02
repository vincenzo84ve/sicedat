class Inscripcione < ActiveRecord::Base
    belongs_to :alumno
    belongs_to :seccione


    # Validaciones
    validates_presence_of :alumno_id, :seccione_id
end
