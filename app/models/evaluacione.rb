class Evaluacione < ActiveRecord::Base
    has_many :notas
    belongs_to :seccione


    # Validaciones
    validates_presence_of :nombre, :descripcion, :fecha_ini, :fecha_fin, :seccione_id
end
