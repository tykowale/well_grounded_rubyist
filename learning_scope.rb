class C
  puts "Just inside class definition block. Here's self:"
  p self
  @v = "I am an instance variable at the top level of a class body."
  puts "And here's the instance variable @v, belonging to #{self}"
  p @v
  def show_var
    puts "Inside an instance method definition block. Here's self:"
    p self
    puts "And here's the instance variable @v, belonging to #{self}"
    p @v
  end
end

c = C.new
c.show_var

class B
  a = 5
  module M
    a = 4
    module N
      a = 3
      class D
        a = 2
        def show_a
          a = 1
          puts a
        end
        puts a
      end
      puts a
    end
    puts a
  end
  puts a
end

d = B::M::N::D.new
d.show_a

# OUTPUT
# Just inside class definition block. Here's self:
# C
# And here's the instance variable @v, belonging to C
# "I am an instance variable at the top level of a class body."
# Inside an instance method definition block. Here's self:
# #<C:0x007fa8ac0aaf08>
# And here's the instance variable @v, belonging to #<C:0x007fa8ac0aaf08>
# nil
# 2
# 3
# 4
# 5
# 1