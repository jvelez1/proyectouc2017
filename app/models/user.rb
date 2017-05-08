class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :lastname, :position, :department, :ci, presence: true
  validates :ci, :email, uniqueness: true
  validate :validate_rol

  def validate_rol
    if self.admin == false && self.auditor == false
      errors.add(:base, "Specify Rol")
    else
      if self.admin == true && self.auditor == true
        errors.add(:base, "Just one rol")
      end
    end
  end
  
end
