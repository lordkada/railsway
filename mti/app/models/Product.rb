class Product < ActiveRecord::Base
  
  def self.relate_to_details
     class_eval <<-EOF
       has_one :detail, :class_name => "#{name}Specific", :foreign_key => "product_id"
       accepts_nested_attributes_for :detail
       default_scope :include => :detail
     EOF
   end
   
end