class Hospital < ActiveRecord::Base
  attr_accessible :localidad_id, :nombre
  validates :localidad_id, :presence => true
  validates :nombre, :presence => true
  validates :nombre, :uniqueness => true
  belongs_to :localidad
  has_many :diagnostico
  def to_s
    if self.localidad_id then
       self.nombre #+' - ' + Localidad.find(self.localidad_id).nombre
    else
       self.nombre
    end 
  end
end
