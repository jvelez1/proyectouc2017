class SwDevelopment < ApplicationRecord
  has_many :development_audits
  has_many :audits, :through => :development_audits
end
