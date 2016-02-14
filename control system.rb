require_relative "tank"
require_relative "engine"

class ControSystem
  CONST_RIGHT_TURN = "right_turn"
  CONST_LEFT_TURN = "left_turn"

  def initialize
    @tank = Tank.new
    @engine = Engine.new
  end

  def right_turn
    CONST_RIGHT_TURN
  end

  def left_turn
    CONST_LEFT_TURN
  end

  def start_engine
    if (@engine.ready(@tank.if_there_fuel))
      puts "run car"
    else
      puts "tank is empty"
    end
  end

  def run(distance)
    @tank.action(distance)
    if ( @tank.get_volume < 0 )
      puts "stop car"
    end
  end

  def get_value_energy
    "#{@tank.get_volume}%"
  end
end