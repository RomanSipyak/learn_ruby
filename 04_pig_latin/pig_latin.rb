def translate(string)
  arr = string.split
  arr.map! do |x|
  if x =~ /\A[aeiou]/i
  x.concat('ay')
  elsif x =~ /\A(?i:(?![a|e|i|o|u])[a-z]){3}/ || x.start_with?('sch') || x =~ /\A(?i:(?![a|e|i|o|u])[a-z]){1}qu/
  x[3..x.size].concat(x[0..2], 'ay')
  elsif x =~ /\A(?i:(?![a|e|i|o|u])[a-z]){2}/ || x.start_with?('qu')
  x[2..x.size].concat(x[0..1], 'ay')
  elsif x =~ /\A(?i:(?![a|e|i|o|u])[a-z]){1}/
  x[1..x.size].concat(x[0], 'ay')
  end
  end
  s_res = ''
  arr.each { |x| s_res.concat(x, ' ') }
  s_res.rstrip!
end
