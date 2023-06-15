//
//  GameEnd.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 11/28/22.
//

import SwiftUI
import PassKit

struct GameEnd: View {
    var body: some View {
        let game = GameModel()
        ZStack{
            Image("Untitled_Artwork")
                .resizable()
                .ignoresSafeArea()
                .colorMultiply(.gray)
            VStack{
                Spacer()
                Text("Game Over")
                    .bold()
                    .foregroundColor(.red)
                    .font(.system(size: 50))
                Spacer()
                //Restart Button
                NavigationLink(destination: GameView(game: game)){
                    Text("Restart")
                        .bold()
                        .frame(width: 350, height: 50)
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                }
                .padding()
                Spacer()
                Spacer()
                
            }
        }
    }
}

struct GameEnd_Previews: PreviewProvider {
    static var previews: some View {
        GameEnd()
    }
}
