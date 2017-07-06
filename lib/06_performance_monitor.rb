require "time"

def measure (pass = 0)
  start_time = Time.now

    if pass == 0
      yield
    else
      pass.times {|current_round| result = yield(current_round)}
    end

    time_used = (Time.now - start_time)/(pass == 0 ? 1 : pass)
end
