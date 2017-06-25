class DevelopmentAudit < ApplicationRecord
  belongs_to :sw_development
  belongs_to :audit
end
