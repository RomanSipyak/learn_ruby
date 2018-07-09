def add(add, added)
  add + added
end

def subtract(subt, subted)
  subt - subted
end

def sum(arr)
  return 0 if arr.empty?
  arr.reduce :+
end

def power(powed, power)
  return powed**power
end

def multiply(*arr)
  a = 1
  arr.each { |x| a = x * a }
  return a
end

def factorial(fac)
  if fac == 0 || fac == 1
   return  1
  else
   return fac * factorial( fac - 1 )
  end
end

