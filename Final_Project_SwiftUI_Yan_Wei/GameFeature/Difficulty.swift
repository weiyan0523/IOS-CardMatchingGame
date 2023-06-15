//
//  Difficulty.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 12/1/22.
//

import SwiftUI
//Not going to use
struct Difficulty: View {
    @State private var difficulty = 0.0
    var body: some View {
        ZStack{
            Image("Untitled_Artwork")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Button{
                    difficulty = 60.0
                }label: {
                    Text("Easy")
                        .bold()
                        .frame(width: 350, height: 50)
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding()
                }
                Button{
                    difficulty = 30.0
                }label: {
                    Text("Medium")
                        .bold()
                        .frame(width: 350, height: 50)
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding()
                }
                Button{
                    difficulty = 10.0
                }label: {
                    Text("Hard")
                        .bold()
                        .frame(width: 350, height: 50)
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding()
                }
                Button{
                    difficulty = 5.0
                }label: {
                    Text("Ultimate")
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

struct Difficulty_Previews: PreviewProvider {
    static var previews: some View {
        Difficulty()
    }
}
