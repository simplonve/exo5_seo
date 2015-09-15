# À partir des commandes et résultats suivant, retrouver les classes à écrire.
# A faire dans tous les languages que vous voulez évidemment, 
# du moment que les consignes et les retours de méthodes sont respectés

player_1 = Player.new "Ryu"
player_2 = Player.new "Ken"

player_1.hp = 100
player_1.force = 10

player_2.hp = 200
player_2.force = 5

player_1.hit player_2
# => Ken perd 10 hp !

puts player_2.hp
# => 190

20.times do
  player_2.hit player_1
  # => Ryu perd 5 hp !
end
# => Ryu a perdu !