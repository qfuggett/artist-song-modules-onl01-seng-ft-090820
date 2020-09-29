module Memorable
  
  module ClassMethods 
    
    #self keyword is omitted when defining class methods inside modules
    
    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end
    
  end
  
end