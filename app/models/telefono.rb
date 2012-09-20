class Telefono < ActiveRecord::Base
  attr_accessible :codigo_de_area, :numero, :tipo_de_telefono_id, :alumno_id
  validates :numero, :presence => true
  validates :codigo_de_area, :numericality => true
  validates :tipo_de_telefono_id, :presence => true
  validates :numero, :numericality => true
  belongs_to :tipo_de_telefono
  belongs_to :alumno
  def to_s
    self.tipo_de_telefono.to_s + " - " + self.codigo_de_area.to_s + " " + self.numero.to_s 
  end
end
