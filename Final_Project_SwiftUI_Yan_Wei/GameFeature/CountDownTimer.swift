//
//  Timer.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 12/3/22.
//

import Foundation
import SwiftUI

//Not goint to use
struct CountDownTimer: View {
    @State public var timeRemaining = 10
    @State var timerStart = true
    //let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    

    var body: some View{
        VStack{
            Text("Timer: \(timeRemaining)")
                .bold()
                .font(.system(size:25))
                .opacity(0.7)
                .foregroundColor(Color(hue: 0.274, saturation: 0.825, brightness: 0.08))
            //                .onReceive(timer){ _ in
            //                    if timeRemaining > 0 && timerStart{
            //                        timeRemaining = timeRemaining - 1
            //                    }
            //                    else{
            //                        timerStart = false
            //                    }
            
        }
    }
    
}

