
#times
class Integer
  def james_times
    i=0
    until i == self
      yield i
      i+=1
    end
    self
  end
end

#each
class Array
  def james_each
    len = self.length
    i = 0
    while i < len
      yield self[i]
      i+=1
    end 
    self
  end
end

class Array
  def james_each_using_james_times
    length.james_times {|el| yield self[el]}
    self
  end
end

class Integer
  def james_times_using_james_each
    (0...self).to_a.james_each do |el|
      yield el
    end
    self
  end
end

class Array
  def james_map
    arr = []
    i = 0
    while i < self.length
      arr << (yield self[i])
      i+=1
    end
    arr
  end

  def james_map_using_each
    arr=[]
    self.james_each {|el| arr << (yield el)}
    arr
  end
end