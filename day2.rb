desc "印bar"
# 描述 
task :foo do
  puts "bar"
end



task :default =>"db:migrate"
# rake -T 查看描述



# block_given? 查看有沒有block
list =[1 , 2 , 3 , 4 ,5]
def my_select(arr)
  result = []
  arr.each do |i|
    result << i if yield(i)
  end
  result
end

# list =[1 , 2 , 3 , 4 ,5]

p my_select([1, 2, 3, 4, 5]) { |i| i.odd? }
????