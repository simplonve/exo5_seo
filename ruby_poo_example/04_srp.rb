class Pignon
  attr_reader :chaine, :dent, :jante, :pneu

  def initialize(chaine, dent, jante, pneu)
    @chaine = chaine
    @dent = dent 
    @jante = jante 
    @pneu = pneu
  end

  def ratio
    chaine / dent.to_f
  end

  def pignon_inches
    ratio * diametre
  end

  def diametre
    jante + (pneu * 2)
  end
end

# pignon should not be calculating roue diametre
