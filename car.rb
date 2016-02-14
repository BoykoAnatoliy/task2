require_relative "ControlSystem"
require_relative "player"
class Car
  def initialize
    @control_system = ControlSystem.new
    @player = Player.new
  end

  def start_car
    @control_system.start_engine
  end

  def run_car
    @control_system.run
  end

  def to_right
    @control_system.right_turn
  end

  def to_left
    @control_system.left_turn
  end
  
  def status_tank
    @control_system.get_value_energy
  end
end
