class Pignon
  attr_reader :chaine, :dent

  def initialize(chaine, dent)
    @chaine = chaine
    @dent = dent
  end

  def ratio
    chaine / dent.to_f
  end
end

pignon = Pignon.new(5,4)
