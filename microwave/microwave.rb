class Microwave
  def initialize(digit)
    @digit = digit
  end

  def timer
    h = 0
    m = @digit
    if @digit > 60
      h = @digit / 60
      m = @digit % 60
    end

    digit_array = @digit.digits.reverse

    if digit_array.length >= 3
      m = digit_array.pop(2).join.to_i
      h = digit_array.join.to_i

      if m > 60
        h += m / 60
        m = m % 60
      end
    end
    
    time = Time.new(1, 1, 1, 0, h, m)
    time.strftime("%M:%S")
  end
end
