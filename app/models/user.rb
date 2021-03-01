class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  

  enum role: { system_admin: 5, default_role: 1, gsas_trust_top_manager: 2, gsas_trust_manager: 3, gsas_trust_admin: 4,document_controller: 6, record_checker: 7 }
  after_initialize :set_default_role, :if => :new_record?
       
  def set_default_role
    self.role ||= :default_role
  end

  def has_role?(role)
    role.include?(role)
  end
end
