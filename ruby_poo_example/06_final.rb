class Pignon
  attr_reader :chaine, :dent, :roue

  def initialize(chaine, dent, roue=nil)
    @chaine = chaine
    @dent = dent
    @roue = roue
  end

  def ratio
    chaine / dent.to_f
  end
  def pignon_inches
    ratio * roue.diametre
  end
end

class Roue
  attr_reader :jante, :pneu
  
  def initialize(jante, pneu)
    @jante = jante
    @pneu = pneu
  end
  
  def diametre
    jante + (pneu * 2)
  end

  def circonference
    diametre * Math::PI
  end
end


@wheel = Wheel.new(26, 1.5)
puts @wheel.circumference
puts Gear.new(52, 11, @wheel).gear_inches
puts Gear.new(52, 11).ratio
