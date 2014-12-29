puts "Top Level"
puts "self is #{self}"

class C
  puts "Class definition block: "
  puts "self is #{self}"

  def self.x
    puts "Class Method C.x:"
    puts "self is #{self}"
  end

  def m
    puts "Instance Method C#m:"
    puts "self is #{self}"
  end

end

c = C.new
C.x
c.m

# OUTPUT
# Top Level
# self is main
# Class definition block:
# self is C
# Class Method C.x:
# self is C
# Instance Method C#m:
# self is #<C:0x007fa97210ff18>