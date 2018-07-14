class RPNCalculator
  def initialize
    @stack = []
  end

  def value
    @stack[@stack.size - 1]
  end

  def push(value)
    @stack.push(value)
  end

  def plus
    if @stack.empty?
      raise 'calculator is empty'
    else
      @stack.push(@stack.pop + @stack.pop)
    end
  end

  def minus
    if @stack.empty?
      raise 'calculator is empty'
    else
      negative = @stack.pop
      @stack.push(@stack.pop - negative)
    end
  end

  def divide
    if @stack.empty?
      raise 'calculator is empty'
    else
      divided = @stack.pop
      @stack.push(@stack.pop / divided.to_f)
    end
  end

  def times
    if @stack.empty?
      raise 'calculator is empty'
    else
      @stack.push(@stack.pop * @stack.pop.to_f)
    end
  end

  def tokens(string)
    string.split.map! { |a| a =~ /\D/ ? a.to_sym : a.to_i }
  end

  def *
    times
  end

  def /
    divide
  end

  def +
    plus
  end

  def -
    minus
  end

  def evaluate(string)
    tokens(string).each do |x|
      if x.is_a?(Integer)
        push(x)
      else
        send(x)
      end
    end
    @stack.last
  end
end

