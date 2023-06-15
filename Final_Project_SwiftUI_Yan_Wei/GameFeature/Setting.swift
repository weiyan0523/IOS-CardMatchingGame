//
//  Setting.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 12/2/22.
//

import SwiftUI

struct Setting: View {
    var body: some View {
        ZStack{
            Image("Untitled_Artwork")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image(systemName: "gearshape.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                    .padding(.bottom, 20.0)
//                NavigationLink(destination: Difficulty()){
//                    Text("Difficulty")
//                        .bold()
//                        .frame(width: 330, height: 50)
//                        .font(.system(size: 35))
//                        .foregroundColor(.white)
//                        .background(Color.blue)
//                        .cornerRadius(20)
//                        .padding()
//                }
                NavigationLink(destination: Contribution()){
                    Text("Contribution")
                        .bold()
                        .frame(width: 330, height: 50)
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .padding()
                }
                Spacer()
                Spacer()
            }
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
