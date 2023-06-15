//
//  LaunchScreen.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 11/26/22.
//

import SwiftUI

struct LaunchScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State private var degree = 0.0
    let game: GameModel
    var body: some View {
        if isActive{
            NavigationView {
                VStack {
                    NavigationLink(destination: GameView(game: game)){
                        ZStack{
                            Image("Untitled_Artwork")
                                .resizable()
                                .ignoresSafeArea()
                            VStack{
                                Text("🍊")
                                //.resizable()
                                    .font(.system(size: 200))
                                    .frame(width:240,height: 240)
                                
                                Text("Play")
                                    .bold()
                                    .frame(width: 350, height: 50)
                                    .font(.system(size: 35))
                                    .foregroundColor(.white)
                                    .background(Color.blue)
                                    .cornerRadius(20)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }else{
            ZStack{
                Image("Untitled_Artwork")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    VStack{
                        Text("🍊")
                        //.resizable()
                            .font(.system(size: 200))
                            .frame(width:240,height: 240)
                            .padding(.bottom, 100.0)
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .rotation3DEffect(.degrees(degree), axis: (x:0, y:1, z:0))
                    .onAppear{
                        withAnimation(.easeIn(duration: 2.0)){
                            self.size = 0.9
                            self.opacity = 1.0
                            self.degree = 1440
                        }
                        
                        
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){withAnimation{
                    self.isActive = true
                    PlaySound(sound: "Run-Amok", type: "mp3")
                }
                }
            }
        }
    }
    
}

