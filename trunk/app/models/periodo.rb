class Periodo < ActiveRecord::Base
    has_many :secciones


    # Validaciones
    validates_presence_of :nombre, :descripcion
end
