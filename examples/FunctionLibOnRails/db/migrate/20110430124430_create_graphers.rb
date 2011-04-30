class CreateGraphers < ActiveRecord::Migration
  def self.up
    create_table :graphers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :graphers
  end
end
