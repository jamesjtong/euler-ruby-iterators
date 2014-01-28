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