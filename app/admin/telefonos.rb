ActiveAdmin.register Telefono do
  #:codigo_de_area, :numero, :tipo_de_telefono_id, :alumno_id
  index do
    column "Documento del Alumno" do |telefono|
      telefono.alumno.documento
    end
    column "Alumno" do |telefono|
      telefono.alumno.to_s
    end
    column "Tipo" do |telefono|
      telefono.tipo_de_telefono.to_s
    end
    column :codigo_de_area
    column :numero
    default_actions
  end 
  filter :tipo_de_telefono
  filter :alumno_id
  filter :codigo_de_area
  filter :numero
end
