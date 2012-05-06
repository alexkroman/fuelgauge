class Category < ActiveRecord::Base
  has_many :entries
  has_many :exercises, :through => :entries
  has_many :foods, :through => :entries
  acts_as_list
end
