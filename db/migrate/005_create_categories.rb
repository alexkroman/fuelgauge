class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.column :name,     :string
      t.column :position, :integer
    end
    
    Category.create(:name => 'Breakfast')
    Category.create(:name => 'Lunch')
    Category.create(:name => 'Dinner')
    Category.create(:name => 'Snacks')
    Category.create(:name => 'Workout')
  end

  def self.down
    drop_table :categories
  end
end
