//
//  FunctionButtons.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 12/1/22.
//

import SwiftUI

struct TopButtons: View{
    var game: GameModel
    @State private var cheatMode = false
    var body: some View{
        HStack{
            NavigationLink(destination: Setting()){
                Image(systemName: "gearshape.fill")
                    .font(.system(size: 40))
                    .padding()
            }
            Spacer()
            //shuffle the cards
            Button(action: {
                withAnimation{
                    game.shuffle()
                }
            })
            {
                Image(systemName: "shuffle.circle.fill")
                    .font(.system(size: 40))
            }
            Spacer()
            // shows all cards for 3 seconds
            Button(action: {
                cheatMode.toggle()
                if cheatMode{
                    withAnimation{
                        game.cheat()
                    }
                }else{
                    withAnimation{
                        game.noCheat()
                    }
                }
            }){
                Image(systemName: "eye.fill")
                    .font(.system(size: 40))
                    .padding()
            }
        }
    }

}
