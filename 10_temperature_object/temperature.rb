class Temperature
  attr_accessor :fah, :cel

  def self.from_celsius(celsius)
    Temperature.new(c: celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    Temperature.new(f: fahrenheit)
  end

  def initialize(far)
    @fah = far[:f]
    @cel = far[:c]
  end

  def in_fahrenheit
    @fah ||= ((@cel * 1.8) + 32)
  end

  def in_celsius
    @cel ||= ((@fah.to_f - 32) / 1.8).round
  end
end


class Celsius < Temperature
  def initialize(far)
    super({ c: far })
  end
end
class Fahrenheit < Temperature
  def initialize(far)
    super({ f: far })
  end
end






