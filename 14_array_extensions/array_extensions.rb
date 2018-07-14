Array.class_eval do
  def sum
    if self.empty?
      0
    else
      inject(0, :+)
    end
  end

  def square
    if self.empty?
      []
    else
      self.map{ |arr| arr**2 }
    end
  end

  def square!
    if self.empty?
      []
    else
      self.map!{ |arr| arr**2 }
    end
  end
end