class Diagnostico < ActiveRecord::Base
  attr_accessible :alumno_id, :biopsia, :fecha_de_diagnostico, :hospital_id, :observacion
  validates :alumno_id, :presence => true
  validates :hospital_id, :presence => true
  validates :fecha_de_diagnostico, :presence => true
  
  belongs_to :hospital
  belongs_to :alumno
  def to_s
    "Hopital: "+ self.hospital.to_s + " Fecha: " + self.fecha_de_diagnostico.to_s + " - " + self.observacion 
  end
end
