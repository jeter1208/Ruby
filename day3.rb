class Animal
    def work
      p"走路"
    end
    def eat
      p"吃"
    end
  end
  class Cat < Animal
  end
  class Dog < Animal
  end
  kk = Cat.new




  class String
    def more_than?(n)
      self.length >= n
    end
  end
  
  tt = "Afifdfdd"
  if tt.more_than?(5)
    puts "hi"
  else
    puts "hey"
  end
