class Timer
  def seconds=(seconds = 0.0)
    @seconds = seconds
  end

  def seconds
    return 0.0 if @seconds.nil?
    @seconds
    end

  def time_string
    return '00:00:00' if @seconds.zero?
    t = @seconds
    Time.at(t).utc.strftime('%H:%M:%S')
  end
end

