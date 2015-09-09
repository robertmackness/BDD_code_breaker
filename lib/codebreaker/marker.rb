require 'codebreaker'

class Marker

  def initialize(secret, guess)
    @secret, @guess = secret, guess
  end

  def total_match_count
    secret = @secret.split('')
    @guess.split('').inject(0) do |sum, n|
      sum += (delete_first_match(secret, n) ? 1 : 0)
    end
  end

  def delete_first_match(secret, n)
    secret.delete_at(secret.find_index(n)) if secret.find_index(n)
  end

  def exact_match_count
    (0..3).inject(0) do |count, index|
      count + (exact_match?(index) ? 1 : 0)
    end
  end

  def number_match_count
    total_match_count - exact_match_count
  end

  def exact_match?(index)
    @guess[index] == @secret[index]
  end
  
end