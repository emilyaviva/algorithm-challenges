# to run: $ ruby ./solutions/picofermibagels.rb
class Referee 
  def initialize
    @num = pick_number
    @count = 0
    @guessed = false
  end

  def guessed?
    @guessed
  end

  def check
    @count += 1
    guess = Player.guess
    return win(guess) if guess == @num
    reply = fermi_pico(guess)
    reply += 'Bagels' if reply.empty?
    puts reply
  end

  private

  def fermi_pico(guess)
    Array.new(4) do |i|
      if guess[i] == @num[i]
        'Fermi'
      elsif @num.index(guess[i])
        'Pico'
      end
    end.compact.sort.join(' ')
  end

  def pick_number
    (0..9).to_a.sample(4).join
  end

  def win(guess)
    puts "you guessed the correct number, #{guess}!!"
    puts "it only took #{@count} tries."
    @guessed = true
  end
end

class Player
  def self.guess
    puts 'guess a 4 digit number (no repeating numbers)'
    guess = gets.chomp
    return guess unless invalid(guess)
    puts 'guess must be 4 unique digits. guess again!'
    Player.guess
  end

  def self.invalid(guess)
    (guess =~ /^[\d]{4}\b/).nil? || guess.split('').uniq.length != 4
  end
end

ref = Referee.new
ref.check until ref.guessed?
