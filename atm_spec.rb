#ruby atm_spec.rb x
#rspec atm_spec.rb ok
#describe it rspec送你的
#看起來陌生的都是
# class ATM    
#   def initialize(bakeSave)
#     @bakeSave = bakeSave
#   end  
#   def deposit(money)
#     @bakeSave = @bakeSave + money
#   end
#   def balance
#     @bakeSave
#   end
# end

require("./atm")

RSpec.describe ATM do
  context "領錢功能" do
    it "可以領錢" do
      atm = ATM.new(30)
      money = atm.withdraw(20)
      expect(atm.balance).to be 10
      expect(money).to be 20    
    end  
    it"不能領 0 元或是小於 0 元的金額" do
      atm = ATM.new(30)
      money = atm.withdraw(-20)
      expect(atm.balance).to be 30
      expect(money).to be 0
    end
    it"不能領超過本身餘額"do
      atm = ATM.new(20)
      money = atm.withdraw(30)
      expect(atm.balance).to be 20
      expect(money).to be 0
    end 
  end
  context "存錢功能" do
    it "可以存錢" do
      #3A原則
      #Arrange  
      atm = ATM.new(10)
      #Act
      atm.deposit(20)
      #Assert
      expect(atm.balance).to be 30 #matcher
      #expect    
    end
    it "不可以存 0 元或是小於 0 元的金額" do
      atm = ATM.new(10)
      atm.deposit(-10)
      expect(atm.balance).to be 10
    end
  end  
end

