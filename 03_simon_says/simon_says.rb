def echo(arr)
  arr
end

def shout(arr)
  arr.upcase
end

def repeat(string, mul = 2)
  a = 0
  b = ''
  while a < mul
    a += 1
    b.concat(string, ' ')
  end
  b = b.rstrip
  b
end

def start_of_word(string, first)
  string[0...first]
end

def first_word(string)
  a = string.split
  a[0]
end

def titleize(string)
  no_capital = %w[and over the]
  arr = string.split(/ | \_| \-/)
  p arr
  arr = arr.map.with_index do |x, i|
    if no_capital.include?(x) && i != 0
      x
    else
      x.capitalize
    end
  end.join(' ')

end

