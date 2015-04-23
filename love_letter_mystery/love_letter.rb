class Palindromer
  MAP = [*("a".."z")]

  attr_reader :word, :difference

  def initialize(word)
    @word = word
    @difference = 0
  end

  def convert
    until is_palindrome?(word)
      word.length.times do |i|
        if word[i] != word[-i+word.length-1]
          @difference += 1
          make_rotations(greater_letter(i), i)
        end
      end
    end
  end

  private

  def greater_letter(i)
    word[i] <=> word[-i+word.length-1]
  end

  def make_rotations(greater, i)
    if greater == 1
      word[i] = rotate_letter(word[i])
    else
      word[-i+word.length-1] = rotate_letter(word[-i+word.length-1])
    end
  end

  def rotate_letter(letter)
    MAP.rotate(MAP.index(letter)-1).first
  end

  def opposite_letter(i)
    word[-i + word.length-1]
  end

  def is_palindrome?(word)
    word.length.times do |i|
      return false if word[i] != word[-i + word.length-1]
    end
    true
  end
end

# test_cases = gets.strip.to_i
test_cases = 4
words = %w(abc abcba abcd cba)

results = test_cases.times.map do |i|
  # p = Palindromer.new(gets.strip)
  p = Palindromer.new(words[i])
  p.convert
  p.difference
end

puts results

