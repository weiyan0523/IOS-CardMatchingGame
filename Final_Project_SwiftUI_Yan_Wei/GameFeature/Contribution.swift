//
//  Contribution.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 12/1/22.
//

import SwiftUI

struct Contribution: View {
    var body: some View {
        GeometryReader { reader in
            ZStack{
                Image("Untitled_Artwork")
                    .resizable()
                    .ignoresSafeArea()
                ZStack{
                    VStack{
                        ScrollView{
                            Text("Contribution and Supporter")
                                .font(.largeTitle)
                                .multilineTextAlignment(.center)
                                .bold()
                                .foregroundColor(.blue)
                            Text("\n stack overflow")
                                .font(.system(size: 25))
                                .foregroundColor(Color(hue: 0.581, saturation: 0.511, brightness: 0.731))
                                .multilineTextAlignment(.center)
                                .bold()
                            
                            Text("\nKiran, Fettah \n\n Zhukov, Vitalii")
                                .font(.system(size: 25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.581, saturation: 0.511, brightness: 0.731))
                                .bold()
                            Text("\nUniversity Of Houston")
                                .font(.system(size: 25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.581, saturation: 0.511, brightness: 0.731))
                                .bold()
                            
                            Text("\nGraphic Desginer: Wei Yan")
                                .font(.system(size: 25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.581, saturation: 0.511, brightness: 0.731))
                                .bold()
                            Text("\nAnimation Desginer: Wei Yan")
                                .font(.system(size: 25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.581, saturation: 0.511, brightness: 0.731))
                                .bold()
                            Text("\nMusic Editor: Wei Yan")
                                .font(.system(size: 25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.581, saturation: 0.511, brightness: 0.731))
                                .bold()
                            Text("\nGraphic Desginer: Wei Yan\n\n Run Amok by Kevin MacLeod | https://incompetech.com \n Music promoted by https://www.chosic.com/free-music/all/ \nCreative Commons CC BY 3.0 \n https://creativecommons.org/licenses/by/3.0/")
                                .font(.system(size: 25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.581, saturation: 0.511, brightness: 0.731))
                                .bold()
                            Text("\n CopyRight 2022-2022 WeiYan Ltd. \nAll Right reserved.\n\n All use of this software is subject to terms and conditions and privacy policy at www.coscwebapp.me")
                                .font(.system(size: 25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.581, saturation: 0.511, brightness: 0.731))
                                .bold()
                            Text("\n For support contact weiyan0523@gmail.com")
                                .font(.system(size: 25))
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color(hue: 0.581, saturation: 0.511, brightness: 0.731))
                                .bold()
                            
                        }
                    }
                    
                    
                }.padding()
                
            }
        }
    }
}
struct Contribution_Previews: PreviewProvider {
    static var previews: some View {
        Contribution()
    }
}
