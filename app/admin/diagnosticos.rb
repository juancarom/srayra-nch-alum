ActiveAdmin.register Diagnostico do
  #:alumno_id, :biopsia, :fecha_de_diagnostico, :hospital_id, :observacion
  index do
    column "Alumno" do |diagnostico|
      diagnostico.alumno.to_s
    end
    column "Hospital" do |diagnostico|
      diagnostico.hospital.to_s
    end
    column :fecha_de_diagnostico
    column "Hace" do |diagnostico|
       distance_of_time_in_words( diagnostico.fecha_de_diagnostico , Time.now)
    end
    column :biopsia
    column :observacion
    default_actions
  end 
  filter :hospital
  filter :alumno
  filter :fecha_de_diagnostico
  filter :biopsia, :as => :select
  
end
