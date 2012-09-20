class Sexo < ActiveRecord::Base
  attr_accessible :nombre
  validates :nombre, :presence => true
  validates :nombre, :uniqueness => true
  has_many :alumno
  def to_s
    self.nombre
  end
end
