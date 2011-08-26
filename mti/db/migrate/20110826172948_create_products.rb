class CreateProducts < ActiveRecord::Migration
  
  def self.up
    
    create_table :products do |t|

      t.string  :type
      t.string  :name
      t.string  :price
      
      t.timestamps

    end
    
    create_table :computers do |t|

      t.integer :abstract_model_id
      t.integer :ram
      t.string  :processor
      t.integer :disk
      
    end

    create_table :monitor do |t|

      t.integer :abstract_model_id
      t.integer :inchs
      
    end
    
  end

  def self.down
  
    drop_table :products
    drop_table :computers
    drop_table :monitor
      
  end
  
end