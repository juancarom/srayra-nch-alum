class Domicilio < ActiveRecord::Base
  attr_accessible :calle, :dpto, :localidad_id, :numero, :piso, :alumno_id
  validates :calle, :presence => true
  validates :localidad_id, :presence => true
  validates :alumno_id, :presence => true
  belongs_to :alumno
  belongs_to :localidad
  def to_s
    self.localidad.to_s + " - Calle: " + self.calle.to_s + " Nro: " + self.numero.to_s + " " + self.piso.to_s + " " + self.dpto.to_s
  end
end
