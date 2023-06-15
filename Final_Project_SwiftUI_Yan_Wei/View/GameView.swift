//
//  GameView.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 11/21/22.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var game: GameModel
    var body: some View {
        ZStack{
            Image("Untitled_Artwork")
                .resizable()
                .ignoresSafeArea()
            VStack{
                //Function buttons
                TopButtons(game: game)
                
                // This is a container view
                GameGrid(items: game.cards, aspRatio: 2/3) { card in
                    if card.isMatched && !card.isFaceUp{
                        //if Matched hide the cards
                        Color.clear
                    }else{
                        CardView(card: card)
                            .padding(3)
                        //When cards are matched there will be an animation
                            .transition(AnyTransition.scale.animation(Animation.easeInOut(duration: 0.3)))
                            .onTapGesture {
                                withAnimation(.linear(duration: 0.4)){
                                    game.choose(card)
                                }
                                
                            }
                    }
                }
                Button(action: {
                    withAnimation{
                        game.shuffle()
                        game.noCheat()
                    }
                }, label:{
                    Text("Restart")
                        .bold()
                        .frame(width: 350, height: 50)
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding()
                })
                //This will hide the navigation Back button so after player
                //click on the Play button they can't go back
            }.navigationBarHidden(true)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let view = GameModel()
        GameView(game: view)
    }
}

