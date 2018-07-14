# Class
class XmlDocument
  def initialize(new_line = false)
    @new_line = new_line
    @lv_block = 0
  end

  def method_missing(method_name, *args)
    @result = ''
    @result+= ' '*2*@lv_block if @new_line
    @result+="<#{method_name}"
    if args.count > 0
      args.each do |hash|
        hash.each do |k ,v|
          @result+=" #{k}='#{v}'"
        end
      end
    end
    if block_given?
      @result+=">"
      @result+="\n" if @new_line
      @lv_block +=1
      @result+=yield
      @lv_block -=1
      @result+= ' '*2*@lv_block if @new_line
      @result+="</#{method_name}>"
      @result+="\n" if @new_line
    else
      @result+="/>"
      @result+="\n" if @new_line
    end
    @result
  end
end