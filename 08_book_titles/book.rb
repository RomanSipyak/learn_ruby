class Book
  attr_writer :title

  def title()
    no_capital = %w[and over the a an of in]
    arr = @title.split(/ | \_| \-/)
    p arr
    arr = arr.map.with_index do |x, i|
      if no_capital.include?(x) && i != 0
        x
      else
        x.capitalize
      end
    end.join(' ')
  end
end
