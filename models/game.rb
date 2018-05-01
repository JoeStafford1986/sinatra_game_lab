class Game

  def initialize(random_choice)
    @random_choice = random_choice

  end

  def rock()
    if @random_choice == "scissors"
      return "You lose"
    elsif @random_choice == "paper"
      return "You win"
    elsif @random_choice == "rock"
      return "Draw"
    else
      return "Not valid"
    end
  end

  def paper()
    if @random_choice == "rock"
      return "You lose"
    elsif @random_choice == "scissors"
      return "You win"
    elsif @random_choice == "paper"
      return "Draw"
    else
      return "Not valid"
    end
  end

  def scissors()
    if @random_choice == "paper"
      return "You lose"
    elsif @random_choice == "rock"
      return "You win"
    elsif @random_choice == "scissors"
      return "Draw"
    else
      return "Not valid"
    end
  end

  def self.computer_choice
    choice = ["rock", "paper", "scissors"].sample
    return choice
  end

end
