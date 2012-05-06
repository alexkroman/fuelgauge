class Client < ActiveRecord::Base
  has_many :entries

  has_many :food_entries,  
           :through    => :entries, 
           :source     => :food,
           :conditions => "entries.item_type = 'Food'"

  has_many :exercise_entries,  
           :through    => :entries, 
           :source     => :exercise,
           :conditions => "entries.item_type = 'Exercise'"
end
