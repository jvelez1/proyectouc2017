class CreateAudits < ActiveRecord::Migration[5.0]
  def change
    create_table :audits do |t|
      t.string :security_controls
      t.string :documentation
      t.string :version
      t.integer :interfaces_quantity
      t.timestamps
      t.integer :db_engie_id
      t.integer :operating_system_id
      t.integer :provaider_id
    end
  end
end
