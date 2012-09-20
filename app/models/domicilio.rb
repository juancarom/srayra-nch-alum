class Domicilio < ActiveRecord::Base
  attr_accessible :calle, :dpto, :localidad_id, :numero, :piso
end
