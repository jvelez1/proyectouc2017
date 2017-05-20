class ChangeNameProvider < ActiveRecord::Migration[5.0]
  def change
    rename_column :provaiders, :type, :type_name
  end
end
