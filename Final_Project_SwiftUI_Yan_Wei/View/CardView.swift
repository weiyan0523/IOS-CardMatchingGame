//
//  CardView.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 11/29/22.
//

import SwiftUI

struct CardView: View{
    @State var degree = 0
    let card: GameModel.Card
    var body: some View{
        GeometryReader {geometry in
            ZStack{
                Text(card.content)
                //This will change the content size base on the Grid size
                    .font(Font.system(size: min(geometry.size.width, geometry.size.height)*0.6))
            }
            .modifier(CardDef(isFaceUp: card.isFaceUp))
        }
        //.padding(.vertical, 1.0)
    }
}

