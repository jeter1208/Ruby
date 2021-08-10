class ATM    
    def initialize(bakeSave)
      @bakeSave = bakeSave
    end  
    def deposit(money)
      @bakeSave = @bakeSave + money if money > 0
    end
    def  withdraw(money)
      if money > 0 and money <= @bakeSave
        @bakeSave = @bakeSave - money
        return money
      else 
        return 0
      end  
    end
    def balance
        @bakeSave
    end
  end