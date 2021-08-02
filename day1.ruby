def f2c(f)
   return (f-32.0)*5/9
   
end

puts f2c(100)  # 印出 C 度

# 常數和變數不同在命名方式
# 常數大寫開頭


x = 2
y = 3
# tmp = x
# x = y 
# y = tmp
x,y = 3,2
puts x
puts y


# 用 upto 方法，印出 1 ~ 100 所有的單數
1.upto(100) do |i|
    p i if i % 2 == 1
  end
  
  # 1.upto(100) do |n|
  #   puts n if n % 2 == 1
  # end