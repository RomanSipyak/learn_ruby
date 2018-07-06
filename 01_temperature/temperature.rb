def ftoc(far)
  ((far.to_f - 32) / 1.8).round
end

def ctof(cel)
  ((cel * 1.8) + 32)
end