# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
has_secure_password
attr_accessible :name, :email, :password, :password_confirmation
has_many :developers
has_many :styles
end

