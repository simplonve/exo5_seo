class Pignon
  attr_reader :chaine, :dent, :roue
  def initialize(chaine, dent, jante, pneu)
    @chaine = chaine
    @dent = dent
    @roue = Roue.new(jante, pneu)
  end

  def ratio
    chaine / dent.to_f
  end
  
  def pignon_inches
    ratio * roue.diametre
  end

  Roue = Struct.new(:jante, :pneu) do
    def diametre
      jante + (pneu * 2)
    end
  end
end
