require('minitest/autorun')
require('minitest/rg')

require_relative('../models/game')

class GameTest < Minitest::Test

  def setup
    @game1 = Game.new("scissors")
    @game2 = Game.new("rock")
    @game3 = Game.new("paper")
  end

  def test_player_rock__loses
    assert_equal("You lose!", @game3.player_rock())
  end

  def test_player_rock__wins
    assert_equal("You win!", @game1.player_rock())
  end

  def test_player_rock__draw
    assert_equal("It's a draw!", @game2.player_rock())
  end

  def test_player_paper__loses
    assert_equal("You lose!", @game1.player_paper())
  end

  def test_player_paper__wins
    assert_equal("You win!", @game2.player_paper())
  end

  def test_player_paper__draw
    assert_equal("It's a draw!", @game3.player_paper())
  end

  def test_player_scissors__loses
    assert_equal("You lose!", @game2.player_scissors())
  end

  def test_player_scissors__wins
    assert_equal("You win!", @game3.player_scissors())
  end

  def test_player_scissors__draw
    assert_equal("It's a draw!", @game1.player_scissors())
  end

end
