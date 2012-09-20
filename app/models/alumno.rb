class Alumno < ActiveRecord::Base
  attr_accessible :apellidos, :documento, :fecha_de_nacimiento, :nombres, :obra_social_id, :sexo_id
end
