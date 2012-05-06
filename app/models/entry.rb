class Entry < ActiveRecord::Base
  belongs_to :client
  belongs_to :category
  belongs_to :item, :polymorphic => true
  belongs_to :food, :class_name  => "Food",
                    :foreign_key => "item_id"
  belongs_to :exercise, :class_name  => "Exercise",
                        :foreign_key => "item_id"
  validates_presence_of :client_id
  validates_presence_of :item_id
  validates_presence_of :item_type
  acts_as_list
end
