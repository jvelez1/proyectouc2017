class CreateProvaiders < ActiveRecord::Migration[5.0]
  def change
    create_table :provaiders do |t|
      t.string :name
      t.string :type
      t.integer :year
      t.timestamps
    end
  end
end
