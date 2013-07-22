# == Schema Information
#
# Table name: styles
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  shoe    :string(255)
#  beard   :string(255)
#  drink   :string(255)
#  browser :string(255)
#

class Style < ActiveRecord::Base
  attr_accessible :name, :shoe, :beard, :drink, :browser
  belongs_to :user
  has_many :developer #had to make this singular for it to work - check with Joel

end
