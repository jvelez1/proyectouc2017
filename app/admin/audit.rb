ActiveAdmin.register Audit do
  permit_params :security_controls, :documentation, :interfaces_quantity,
                :db_engie_id, :operating_system_id, :provaider_id, :version, sw_development_ids: []

  form do |f|
    f.semantic_errors :user
    f.inputs "Audit Details" do
      f.input :security_controls
      f.input :documentation
      f.input :interfaces_quantity
      f.input :version
      f.input :db_engie
      f.input :operating_system
      f.input :provaider
      f.inputs "Software Developments" do #
        f.input :sw_developments, as: :check_boxes #
      end

    end
    f.actions
  end

  show do
    attributes_table do
      row :security_controls
      row :documentation
      row :interfaces_quantity
      row :version
      row :db_engie
      row :operating_system
      row :provaider
      panel 'Software Developments' do
        table_for audit.sw_developments do
          column :name
          column :version
          column :documentation
          column :source_files
          column :executable_files
          column 'Quantity Source Files', :q_source_files
          column 'Quantity Executable Files', :q_executable_files
        end
      end
    end
  end

  # form do |f|
  #   f.inputs "Details" do # physician's fields
  #     f.input :security_controls
  #     f.input :documentation
  #     f.input :version
  #     f.input :interfaces_quantity
  #     f.input :db_engie_id
  #     f.input :operating_system_id
  #     f.input :provaider_id
  #   end
  #
  #   # f.has_many :appointments do |app_f|
  #   #   app_f.inputs "Appointments" do
  #   #     if !app_f.object.nil?
  #   #       # show the destroy checkbox only if it is an existing appointment
  #   #       # else, there's already dynamic JS to add / remove new appointments
  #   #       app_f.input :_destroy, :as => :boolean, :label => "Destroy?"
  #   #     end
  #   #
  #   #     app_f.input :patient # it should automatically generate a drop-down select to choose from your existing patients
  #   #     app_f.input :appointment_date
  #   #   end
  #   # end
  # end

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
