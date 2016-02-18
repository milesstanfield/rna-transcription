class Complement
  VERSION = 3
  class << self

    def of_dna(string)
      letters(string).map do |letter|
        convert_letter(letter) || (raise ArgumentError)
      end.join
    end

    private

    def letters(string)
      string.split ''
    end

    def convert_letter(letter)
      conversions[letter.to_sym]
    end

    def conversions
      { A: 'U', C: 'G', G: 'C', T: 'A' }
    end
  end
end
