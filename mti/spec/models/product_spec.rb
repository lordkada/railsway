require 'spec_helper'

describe Product do
  
  it "would create a computer table" do
  
    computer = Computer.new
    computer.should be_valid
  
  end

  it "would create a computer detail table" do
    
    computer = Computer.new
    computer.detail.processor= :wow
    computer.price = 200
    
    computer.detail.should respond_to :processor
    computer.detail.should respond_to :ram
    computer.detail.should respond_to :disk
    
    computer.detail.should_not respond_to :size
        
  end

  it "would create a display table" do
  
    computer = Display.new
    computer.should be_valid
  
  end
  
  it "would create a display detail table" do
    
    display = Display.new
    
    display.detail.should respond_to :size
    
    display.detail.should_not respond_to :processor
    display.detail.should_not respond_to :ram
    display.detail.should_not respond_to :disk
    
  end
  
end
