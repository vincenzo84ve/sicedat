class Nota < ActiveRecord::Base
    belongs_to :evaluacione
    belongs_to :alumno

    # Validaciones
    validates_presence_of :nota, :alumno_id, :evaluacione_id
end
