class Game

  def initialize(random_choice = nil)
    @random_choice = random_choice
  end

  def player_rock()
    if @random_choice == "scissors"
      return "You win!"
    elsif @random_choice == "paper"
      return "You lose!"
    else @random_choice == "rock"
      return "It's a draw!"
    end
  end

  def player_paper()
    if @random_choice == "rock"
      return "You win!"
    elsif @random_choice == "scissors"
      return "You lose!"
    else @random_choice == "paper"
      return "It's a draw!"
    end
  end

  def player_scissors()
    if @random_choice == "paper"
      return "You win!"
    elsif @random_choice == "rock"
      return "You lose!"
    else @random_choice == "scissors"
      return "It's a draw!"
    end
  end

  def self.computer_choice
    choice = ["rock", "paper", "scissors"].sample
    return choice
  end

end
