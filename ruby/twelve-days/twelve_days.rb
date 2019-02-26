class TwelveDays
  DAYS = [
    'first',
    'second',
    'third',
    'fourth',
    'fifth',
    'sixth',
    'seventh',
    'eighth',
    'ninth',
    'tenth',
    'eleventh',
    'twelfth'
  ]
  GIFTS = [
    'a Partridge in a Pear Tree',
    'two Turtle Doves',
    'three French Hens',
    'four Calling Birds',
    'five Gold Rings',
    'six Geese-a-Laying',
    'seven Swans-a-Swimming',
    'eight Maids-a-Milking',
    'nine Ladies Dancing',
    'ten Lords-a-Leaping',
    'eleven Pipers Piping',
    'twelve Drummers Drumming'
  ]

  class << self
    def song
      DAYS.map.with_index { |day, idx| build_verse(day, gifts_list(idx)) }.join("\n")
    end

    private

    def build_verse(day, gifts_list)
      "On the #{day} day of Christmas my true love gave to me: #{gifts_list}.\n"
    end

    def gifts_list(idx)
      [GIFTS[1..idx].reverse.join(', '), GIFTS.first].reject(&:empty?).join(', and ')
    end
  end
end
