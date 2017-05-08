ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :password, :password_confirmation, :admin, :auditor, :name, :lastname, :ci,
              :phone, :department, :position
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.semantic_errors :user
    f.inputs "User Details" do
      f.input :name
      f.input :lastname
      f.input :ci
      f.input :phone
      f.input :department
      f.input :position
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :admin, :label => "Admin"
      f.input :auditor, :label => "Auditor"
    end
    f.actions
  end

  index do
    column :id
    column :email
    column :admin
    column :auditor
    actions
  end

end
