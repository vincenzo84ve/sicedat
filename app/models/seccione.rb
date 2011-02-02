class Seccione < ActiveRecord::Base
    has_many :evaluaciones
    has_many :inscripciones
    belongs_to :periodo
    belongs_to :curso


    # Validaciones
    validates_presence_of :nombre, :curso_id, :periodo_id
end
