class Coach < ActiveRecord::Base
  attr_accessible :email, :first_base, :fname, :lname, :manager, :phone, :team_id, :third_base, :password, :password_confirmation, :fullname
  
  has_secure_password
  belongs_to :team

  validates :email, :uniqueness => true

  def fullname
		"#{fname} #{lname}"
	end
end
