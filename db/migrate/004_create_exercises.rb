class CreateExercises < ActiveRecord::Migration
  def self.up
    create_table :exercises do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :calories_per_minute, :decimal
    end
    Exercise.create(:name => "Running", :calories_per_minute => 10)
    Exercise.create(:name => "Swimming", :calories_per_minute => 12)
    Exercise.create(:name => "Biking", :calories_per_minute => 13)
  end

  def self.down
    drop_table :exercises
  end
end
