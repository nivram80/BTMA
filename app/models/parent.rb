class Parent < ActiveRecord::Base
  attr_accessible :email, :fname, :lname, :password_digest, :phone, :player_id, :relation
  belongs_to :player
end
