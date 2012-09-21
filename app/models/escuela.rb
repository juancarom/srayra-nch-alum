class Escuela < ActiveRecord::Base
  attr_accessible :nombre, :numero
  
  validates :nombre, :presence => true
  validates :nombre, :uniqueness => true
  validates :numero, :presence => true
  validates :numero, :uniqueness => true
  validates :numero, :numericality => true
  has_many :alumno
  def to_s
    self.numero.to_s + " " + self.nombre
  end
end
