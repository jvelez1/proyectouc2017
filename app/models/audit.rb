class Audit < ApplicationRecord
  belongs_to :db_engie
  belongs_to :provaider
  belongs_to :operating_system
  has_many :development_audits
  has_many :sw_developments, :through => :development_audits

  accepts_nested_attributes_for :sw_developments, allow_destroy: true

end
