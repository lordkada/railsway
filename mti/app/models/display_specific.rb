class DisplaySpecific < ActiveRecord::Base
  
  belongs_to :display, :foreign_key => :product_id
  
end