module MultipleInheritance

  def self.included base
   
     base.class_eval {
       
       has_one :detail, :class_name => "#{base.name}Specific", :foreign_key => "product_id"
       accepts_nested_attributes_for :detail
       default_scope :include => :detail
             
     }
     
  end
 
end

class Product < ActiveRecord::Base
  
  def initialize

    super
    
    build_detail
    
  end  
  
end