class Audit < ApplicationRecord
  belongs_to :db_engie
  belongs_to :provaider
  belongs_to :operating_system
end
