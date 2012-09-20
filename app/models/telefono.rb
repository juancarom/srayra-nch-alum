class Telefono < ActiveRecord::Base
  attr_accessible :codigo_de_area, :numero, :tipo_de_telefono_id
end
