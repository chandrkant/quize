class User < ApplicationRecord
  rolify
  rolify :before_add => :before_add_method
  after_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def before_add_method(role)
    # do something before it gets added
  end

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end
end
