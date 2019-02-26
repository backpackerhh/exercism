class Clock
  attr_reader :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = hour * 60 + minute
  end

  def to_s
    [format_time((minutes / 60) % 24), format_time(minutes % 60)].join(':')
  end

  def +(other_clock)
    @minutes += other_clock.minutes

    self
  end

  def -(other_clock)
    @minutes -= other_clock.minutes

    self
  end

  def ==(other_clock)
    to_s == other_clock.to_s
  end

  private

  def format_time(number)
    number.to_s.rjust(2, '0')
  end
end
