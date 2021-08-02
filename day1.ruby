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


  # p *1..100].select { |i| i.odd? 
# for i in 1..100 do 
#   puts i if i.odd?
# end
#  result = [1,2,3,4,5,6,7].select{| x |
# x.odd?
# }
# p result




# 用 reduce 找出 [5, 2, 9, 10, 7, 89, 70] 的最大值
arr = [5, 2, 9, 10, 7, 89, 70]
max = arr.reduce do |max, i|
  if max > i
    max
  else
    i
  end
end

puts max