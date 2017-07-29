player.hand.1 <- function(num){
  deck <- rep(1:11,4)
  card.no <- num
  deck.value <- sample(deck,card.no,replace = T)
  print(sum(deck.value))
  return(deck.value)
}

first.value <- player.hand.1(2)

player.hand.2()

player.hand.2 <- function(){
player.move <- readline("What do you want to do")
  if (player.move == "D") {
    player.hand2 <- player.hand.1(1)
    player.second <- sum(first.value,player.hand2)
    print(player.second)
  } else {
    print("Good luck") 
  }
}  



player.hand.1(2)
player.move.1()


player.move.second <- readline("What do you want to do")
if (player.move.second == "D") {
  play.hand <- sample(deck,1)
  player.third <- sum(player.second,play.hand)
  print(player.third)
} else {
  print(sum(player.second))
}

#####Dealer Plays#####
dealer.hand <- sample(deck,2,replace = F)
dealer.play <- sum(dealer.hand)
dealer.card <- sample(deck,1)
if (dealer.play < 17) {
  dealer.second <- sum(dealer.play,dealer.card)
  print(dealer.second)
  if (dealer.play < 17) {
    addition.card.new <- sample(deck,1)
    dealer.second <- sum(dealer.play,addition.card.new)
  }
  print(dealer.second)
}

if (dealer.second == 21) {
  print("Black Jack")
} else if ( dealer.second > 21) {
  print("dealer busted")
} else {
  print(dealer.second)
}

