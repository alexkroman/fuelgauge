class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.column :full_name, :string
    end
    Client.create(:full_name => 'Alex Kroman')
    Client.create(:full_name => 'John Doe')
    Client.create(:full_name => 'Jane Doe')
  end

  def self.down
    drop_table :clients
  end
end
