class Localidad < ActiveRecord::Base
  attr_accessible :nombre
  validates :nombre, :presence => true
  validates :nombre, :uniqueness => true
  has_many :domicilio
  has_many :hospital
  def to_s
    self.nombre
  end
end
