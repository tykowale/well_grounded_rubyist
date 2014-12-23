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