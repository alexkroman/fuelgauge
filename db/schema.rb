# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 5) do

  create_table "categories", :force => true do |t|
    t.column "name",     :string
    t.column "position", :integer
  end

  create_table "clients", :force => true do |t|
    t.column "full_name", :string
  end

  create_table "entries", :force => true do |t|
    t.column "client_id",  :integer
    t.column "item_id",    :integer
    t.column "item_type",  :string
    t.column "category",   :string
    t.column "created_on", :date
    t.column "position",   :integer
  end

  create_table "exercises", :force => true do |t|
    t.column "name",                :string
    t.column "description",         :text
    t.column "calories_per_minute", :integer, :limit => 10, :precision => 10, :scale => 0
  end

  create_table "foods", :force => true do |t|
    t.column "name",          :string
    t.column "description",   :text
    t.column "calories",      :integer, :limit => 10, :precision => 10, :scale => 0
    t.column "fat",           :integer, :limit => 10, :precision => 10, :scale => 0
    t.column "saturated_fat", :integer, :limit => 10, :precision => 10, :scale => 0
    t.column "cholesterol",   :integer, :limit => 10, :precision => 10, :scale => 0
    t.column "protein",       :integer, :limit => 10, :precision => 10, :scale => 0
    t.column "sodium",        :integer, :limit => 10, :precision => 10, :scale => 0
    t.column "carbohydrates", :integer, :limit => 10, :precision => 10, :scale => 0
    t.column "fiber",         :integer, :limit => 10, :precision => 10, :scale => 0
    t.column "sugar",         :integer, :limit => 10, :precision => 10, :scale => 0
    t.column "calcium",       :integer, :limit => 10, :precision => 10, :scale => 0
  end

end