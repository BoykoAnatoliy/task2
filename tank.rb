class Tank
  CONST_MAX_VOLUME = 100

  def initialize
    @volume = CONST_MAX_VOLUME
  end

  def if_there_fuel
   ( @volume > 0 ) ? true:false; 
  end

  def get_volume
    @volume
  end

  def add_fuel
    @volume = CONST_MAX_VOLUME
  end

  def action(value)
    @volume -= (value*5)
  end
end
