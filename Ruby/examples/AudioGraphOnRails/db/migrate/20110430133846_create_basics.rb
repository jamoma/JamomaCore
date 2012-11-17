class CreateBasics < ActiveRecord::Migration
  def self.up
    create_table :basics do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :basics
  end
end
