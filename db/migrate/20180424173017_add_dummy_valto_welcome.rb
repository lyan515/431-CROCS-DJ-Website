class AddDummyValtoWelcome < ActiveRecord::Migration
  def change
    add_column :welcomes, :dummy, :string
  end
end
