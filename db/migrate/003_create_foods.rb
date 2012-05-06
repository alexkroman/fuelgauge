require 'fastercsv'

class CreateFoods < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.column :name,    :string
      t.column :description, :text
      t.column :calories, :decimal
      t.column :fat, :decimal
      t.column :saturated_fat, :decimal
      t.column :cholesterol, :decimal
      t.column :protein, :decimal
      t.column :sodium, :decimal
      t.column :carbohydrates, :decimal
      t.column :fiber, :decimal
      t.column :sugar, :decimal
      t.column :calcium, :decimal
    end
    
    FasterCSV.foreach("#{RAILS_ROOT}/lib/foods/ABBREV.txt", :col_sep => '^') do |row|
      Food.create(:name => row[1].to_s.downcase)
    end

   # csv = CSV.parse(File.open("#{RAILS_ROOT}/lib/foods/ABBREV.txt", 'r').read, fs = '^')
  #  csv.each{|row|
   #   Food.create(:name => row[1])
  #  }
  
    
  end

  def self.down
    drop_table :foods
  end
end
