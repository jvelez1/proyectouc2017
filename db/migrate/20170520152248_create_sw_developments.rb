class CreateSwDevelopments < ActiveRecord::Migration[5.0]
  def change
    create_table :sw_developments do |t|
      t.string :name
      t.string :version
      t.string :documentation
      t.string :source_files
      t.string :executable_files
      t.integer :q_source_files
      t.integer :q_executable_files
      t.timestamps
    end
  end
end
