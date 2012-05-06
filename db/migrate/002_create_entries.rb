class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.column :client_id,    :integer
      t.column :item_id,      :integer
      t.column :item_type,    :string
      t.column :category_id,  :string
      t.column :created_on,   :date
      t.column :position,     :integer
    end
  end

  def self.down
    drop_table :entries
  end
end
