class TipoDeTelefono < ActiveRecord::Base
  attr_accessible :nombre
  validates :nombre, :presence => true
  validates :nombre, :uniqueness => true
  has_many :telefono
  def to_s
    self.nombre
  end
end
