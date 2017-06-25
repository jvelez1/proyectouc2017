class CreateDevelopmentAudits < ActiveRecord::Migration[5.0]
  def change
    create_table :development_audits do |t|
      t.belongs_to :sw_development, index: true
      t.belongs_to :audit, index: true
    end
  end
end
