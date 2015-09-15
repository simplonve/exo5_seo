class Pignon
  attr_reader :chaine, :dent, :jante, :pneu

  def initialize(chaine, dent, jante, pneu)
    @chaine = chaine
    @dent = dent # + unanticipated_adjustment_factor
    @jante = jante 
      # fr = jante
    @pneu = pneu
  end

  def ratio
    chaine / dent.to_f
  end

  def pignon_inches
    # pneu goes around jante twice for diametre
    ratio * (jante + (pneu * 2))
  end
end

# Oh ! but pignon_inches has more than one responsibility.