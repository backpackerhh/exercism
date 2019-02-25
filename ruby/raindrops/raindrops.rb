class Raindrops
  def self.convert(number)
    speak = ''
    speak << 'Pling' if (number % 3).zero?
    speak << 'Plang' if (number % 5).zero?
    speak << 'Plong' if (number % 7).zero?

    return number.to_s if speak.empty?

    speak
  end
end
