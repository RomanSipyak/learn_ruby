def reverser
  string =  yield
  lambda do |string|
    split_string = string.split(' ')
    reversed = []
    split_string.each do |x|
      x = x.split('')
      x.size.times { reversed << x.pop }
      reversed << ' '
    end
    reversed.join.rstrip
  end.call(string)
end

def adder(add = 1)
  add + yield
end

def repeater(mul = 1)
  i = 0
  while i < mul
    i += 1
    yield
  end
end

# def func(bool, &closure)
#   return bool if bool
#   closure ||= lambda do |words|
#     puts '!!!' + words
#   end
#   closure.call('и раз')
#   closure.call('и два')
# end
#
# func(false){ |words| puts '??? ' + words }
