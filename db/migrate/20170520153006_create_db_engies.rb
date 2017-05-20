class CreateDbEngies < ActiveRecord::Migration[5.0]
  def change
    create_table :db_engies do |t|
      t.string :name
      t.string :version
      t.string :documentation
      t.timestamps
    end
  end
end
