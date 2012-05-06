class Exercise < ActiveRecord::Base
  has_many :entries, :as => :item
  has_many :clients, :through => :entries
end
