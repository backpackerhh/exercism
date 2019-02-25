class Luhn
  class << self
    def valid?(number_as_string)
      return false if contains_disallowed_characters?(number_as_string)

      digits = extract_integer_digits(number_as_string)

      return false if digits.size <= 1

      divisible_by_ten?(sum_digits(digits))
    end

    private

    def contains_disallowed_characters?(number_as_string)
      number_as_string.match?(/[^\d ]/)
    end

    def extract_integer_digits(number_as_string)
      number_as_string.scan(/\d/).map(&:to_i)
    end

    def sum_digits(digits)
      digits.reverse
            .map.with_index(1) { |digit, idx| double_every_second_digit(digit, idx) }
            .map(&method(:substract_nine_if_needed))
            .sum
    end

    def double_every_second_digit(digit, idx)
      (idx % 2).zero? ? digit * 2 : digit
    end

    def substract_nine_if_needed(digit)
      digit > 9 ? digit - 9 : digit
    end

    def divisible_by_ten?(number)
      (number % 10).zero?
    end
  end
end
