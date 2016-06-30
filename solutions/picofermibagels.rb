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
    reply = fermi_pico(guess)
    reply += "Bagels" if reply.empty?
    return win(guess) if reply == "Fermi Fermi Fermi Fermi"
    puts reply
  end

  def fermi_pico(guess)
    4.times.map do |i|
      if guess[i] == @num[i]
        "Fermi"
      elsif @num.index(guess[i])
        "Pico"
      end
    end.compact.sort.join(" ")
  end

  private

  def pick_number
    (0..9).to_a.shuffle[0..3].join
  end

  def win(guess)
    puts "you guessed the correct number, #{guess}!! it only took #{@count} tries."
    @guessed = true
  end
end

class Player
  def self.guess
    puts "guess a 4 digit number (no repeating numbers)"
    guess = gets.chomp()
    return guess unless (guess =~ /^[\d]{4}\b/).nil? || guess.split("").uniq.length != 4
    puts "guess must be 4 unique digits. guess again!"
    Player.guess
  end
end

ref = Referee.new
until ref.guessed?
  ref.check
end
