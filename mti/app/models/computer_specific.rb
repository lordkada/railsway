class ComputerSpecific < ActiveRecord::Base
  
  belongs_to :computer, :foreign_key => :product_id
  
end