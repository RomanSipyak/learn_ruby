module Inwords
  def in_words
    return 'zero' if zero?
    words(self)
  end

  def words(y_num)
    numbers_to_name = {
      1_000_000_000_000 => 'trillion',
      1_000_000_000 => 'billion',
      1_000_000 => 'million',
      1000 => 'thousand',
      100 => 'hundred',
      90 => 'ninety',
      80 => 'eighty',
      70 => 'seventy',
      60 => 'sixty',
      50 => 'fifty',
      40 => 'forty',
      30 => 'thirty',
      20 => 'twenty',
      19 => 'nineteen',
      18 => 'eighteen',
      17 => 'seventeen',
      16 => 'sixteen',
      15 => 'fifteen',
      14 => 'fourteen',
      13 => 'thirteen',
      12 => 'twelve',
      11 => 'eleven',
      10 => 'ten',
      9 => 'nine',
      8 => 'eight',
      7 => 'seven',
      6 => 'six',
      5 => 'five',
      4 => 'four',
      3 => 'three',
      2 => 'two',
      1 => 'one'

    }
    str = ''
    numbers_to_name.each do |number, name|
      fraction, res = y_num.divmod(number)
      if y_num.zero?
        return str.strip
      elsif y_num.to_s.length == 1 && fraction > 0
        return (str + name.to_s).strip
      elsif y_num < 100 && fraction > 0
        return str + name.to_s if res.zero?
        return (str + "#{name} " + words(res)).strip
      elsif y_num / number > 0
        return (str + words(fraction) + " #{name} " + words(res)).strip
      end
    end
  end
end

class Integer
  include Inwords
end
puts 5.in_words