class AddRackToHosts < ActiveRecord::Migration
  def change
    add_column :hosts, :rack, :string, :null => true
    add_column :hosts, :racku, :string, :null => true
  end
end
