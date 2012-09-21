ActiveAdmin.register Alumno do
  #:apellidos, :documento, :fecha_de_nacimiento, :nombres, :obra_social_id, :sexo_id
  show :title => "Alumno" do |alumno|
        attributes_table do
           row :region
           row :escuela  
           row :documento
           row :apellidos
           row :nombres
           row :sexo_id
	   row :obra_social_id
           row :fecha_de_nacimiento
        end
        div :class => "panel" do
          h3 "Telefonos"
          if alumno.telefono and alumno.telefono.count > 0
            div :class => "panel_contents" do
              div :class => "attributes_table" do
                table do
                  tr do
                    th do
                      "Datos de los Telefonos"
                    end
                  end
                  tbody do
                    alumno.telefono.each do |telefono|
                      tr do
                        td do
                          telefono
                        end
                      end
                    end
                  end
                end
              end
            end
          else
            h3 "No tiene telefono"
          end
        end
        div :class => "panel" do
          h3 "Domicilios"
          if alumno.domicilio and alumno.domicilio.count > 0
            div :class => "panel_contents" do
              div :class => "attributes_table" do
                table do
                  tr do
                    th do
                      "Datos de los domicilio"
                    end
                  end
                  tbody do
                    alumno.domicilio.each do |domicilio|
                      tr do
                        td do
                          domicilio
                        end
                      end
                    end
                  end
                end
              end
            end
          else
            h3 "No tiene domicilio"
          end
        end
        div :class => "panel" do
          h3 "Diagnosticos"
          if alumno.diagnostico and alumno.diagnostico.count > 0
            div :class => "panel_contents" do
              div :class => "attributes_table" do
                table do
                  tr do
                    th do
                      "Datos de los Diagnosticos"
                    end
                  end
                  tbody do
                    alumno.diagnostico.each do |diagnostico|
                      tr do
                        td do
                          diagnostico
                        end
                      end
                    end
                  end
                end
              end
            end
          else
            h3 "No tiene diagnostico"
          end
        end
   end
################################################################################################################
################################################################################################################
################################################################################################################
  index do
    column :region
    column :escuela
    column :documento
    column :apellidos
    column :nombres
    column :sexo
    column :obra_social
    column :fecha_de_nacimiento
    column "Edad" do |alumno|
      alumno.edad
    end
    column "Cant. Diag." do |alumno|
      alumno.cant_diagnosticos
    end
    default_actions
  end
################################################################################################################
################################################################################################################
  filter :region_id
  filter :escuela_id
  filter :documento
  filter :apellidos
  filter :nombres
  filter :sexo_id
  filter :obra_social
  
################################################################################################################
################################################################################################################


   form do |f|
      #:apellidos, :documento, :fecha_de_nacimiento, :nombres, :obra_social_id, :sexo_id
      f.inputs "Datos del Alumno:" do
        f.input :region_id, :as => :select, :collection => Region.all
        f.input :escuela_id, :as => :select, :collection => Escuela.all
        f.input :documento
        f.input :apellidos
        f.input :nombres
        f.input :sexo_id, :as => :select, :collection => Sexo.all 
	f.input :obra_social_id, :as => :select, :collection => ObraSocial.all
        f.input :fecha_de_nacimiento, :as => :date, :start_year => 1900
        f.has_many :telefono do |t|
          t.inputs "Telefonos:" do
           t.input :tipo_de_telefono_id, :as => :select, :collection => TipoDeTelefono.all 
            t.input :codigo_de_area
            t.input :numero
            t.input :_destroy, :as=>:boolean, :required => false, :label=>'TILDE PARA ELIMINAR TELEFONO Y PRESIONE GUARDAR ALUMNO'
          end
        end
        f.has_many :domicilio do |d|
          d.inputs "Domicilios:" do
            d.input :localidad_id, :as => :select, :collection => Localidad.all 
            d.input :calle
            d.input :numero
            d.input :piso
            d.input :dpto
            d.input :_destroy, :as=>:boolean, :required => false, :label=>'TILDE PARA ELIMINAR DOMICILIO Y PRESIONE GUARDAR ALUMNO'
          end
        end
        f.has_many :diagnostico do |dg|
          dg.inputs "Diagnosticos:" do
            dg.input :fecha_de_diagnostico, :as => :date, :start_year => 1990
            dg.input :hospital_id, :as => :select, :collection => Hospital.all 
            dg.input :biopsia
            
            dg.input :observacion, :as => :string
            dg.input :_destroy, :as=>:boolean, :required => false, :label=>'TILDE PARA ELIMINAR DIAGNOSTICO Y PRESIONE GUARDAR ALUMNO'
          end
        end
       
      end
      f.buttons
  end
   
   
end
