class Timer
  attr_accessor :seconds

  def seconds
    @seconds = 0
  end

  def time_string
    hours = padded((@seconds / 3600))
    minutes = padded(((@seconds / 60) % 60))
    seconds = padded((@seconds % 60))

    # hours + ":" + minutes + ":" + seconds

    "#{hours}:#{minutes}:#{seconds}"
  end

  def padded (num)
    # num.to_s.rjust(2, '0')
    "%02d" % num
  end

end
