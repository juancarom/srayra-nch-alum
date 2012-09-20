class Diagnostico < ActiveRecord::Base
  attr_accessible :alumno_id, :biopsia, :fecha_de_diagnostico, :hospital_id
end
