class CreateProducts < ActiveRecord::Migration
  
  def self.up
    
    create_table :products do |t|

      t.string  :type
      t.string  :name
      t.string  :price
      
      t.timestamps

    end
    
    create_table :computer_specifics do |t|

      t.integer :product_id
      t.integer :ram
      t.string  :processor
      t.integer :disk
      
    end

    create_table :display_specifics do |t|

      t.integer :product_id
      t.integer :size
      
    end
    
  end

  def self.down
  
    drop_table :products
    drop_table :computer_specific
    drop_table :display_specific
      
  end
  
end