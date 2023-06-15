//
//  CardDef.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 12/2/22.
//

import Foundation
import SwiftUI

//Need Animation to flip over the card
// support only IOS 13 to latest version
struct CardDef: AnimatableModifier{
    
    init(isFaceUp: Bool) {
        if isFaceUp{
            degree = 0
        }
        else{
            degree = 180
        }
    }
    var degree: Double
    var animatableData: Double{
        get{
            degree
        }
        set{
            degree = newValue
        }
    }
    
    func body(content: Content) -> some View {
        ZStack{
            if degree < 90{
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(lineWidth: 4)
                content
            }else{
                RoundedRectangle(cornerRadius: 20)
                    .fill()
                    .foregroundColor(Color(hue: 0.274, saturation: 0.825, brightness: 0.58))
            }
        }
        .rotation3DEffect(Angle.degrees(degree), axis: (x: 0, y: 1, z:0))
    }
}
