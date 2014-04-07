class Coach < ActiveRecord::Base
  attr_accessible :email, :first_base, :fname, :lname, :manager, :password_digest, :phone, :team_id, :third_base
  belongs_to :team
end
