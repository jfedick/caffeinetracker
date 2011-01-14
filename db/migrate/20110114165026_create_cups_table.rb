class CreateCupsTable < ActiveRecord::Migration
  def self.up
    create_table :cups, :force => true do |t|
      t.integer :number, :null => :false
      t.timestamps
    end
  end

  def self.down
    drop_table :cups
  end
end