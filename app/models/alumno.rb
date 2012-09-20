class Alumno < ActiveRecord::Base
  attr_accessible :apellidos, :documento, :fecha_de_nacimiento, :nombres, :obra_social_id, :sexo_id, :diagnostico_attributes, :telefono_attributes, :domicilio_attributes
  
  validates :documento, :presence => true
  validates :documento, :uniqueness => true
  validates :documento, :numericality => true
  validates :apellidos, :presence => true
  validates :nombres, :presence => true
  validates :obra_social_id, :presence => true
  validates :sexo_id, :presence => true
  
  belongs_to :sexo
  belongs_to :obra_social
  # has_many a la clase diagnostico :dependent => :destroy para poder eliminar las clases dependientes en caso de borrar la persona
  has_many :diagnostico, :dependent => :destroy
  # :allow_destroy => true para poder borrar a traves del formulario 
  accepts_nested_attributes_for :diagnostico, :allow_destroy => true
  
  has_many :telefono, :dependent => :destroy
  accepts_nested_attributes_for :telefono, :allow_destroy => true
  
  has_many :domicilio, :dependent => :destroy
  accepts_nested_attributes_for :domicilio, :allow_destroy => true
  
  def to_s
    self.apellidos + ", " +  self.nombres + ", DNI: " + self.documento.to_s
  end
  
  def edad
    age = Date.today.year - self.fecha_de_nacimiento.year
    age -= 1 if Date.today < self.fecha_de_nacimiento + age.years #for days before birthday
    return age
  end
  def cant_diagnosticos
    self.diagnostico.count
  end
  
end
