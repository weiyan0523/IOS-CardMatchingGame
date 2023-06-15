//
//  GameModel.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 12/4/22.
//

import Foundation
import SwiftUI

//mvvm
class GameModel: ObservableObject{
    typealias Card = GameCore<String>.Card
    private var model: GameCore<String> = GameCore<String>(pairedOfCards: 8, newCardContent: makeNewCardContent)
    
    var cards: Array<Card>{
        return model.cards
    }
    
    private static let Emoji = ["🍏","🍎","🍊","🍋","🍌","🥑","🥝","🍇","🍐","🍓","🍒","🍉"]
    static func makeNewCardContent(index:Int) -> String{
        return Emoji[index]
    }
    func choose(_ card: Card){
        //everytime model change this function will refresh the view
        objectWillChange.send()
        model.choose(card)
    }
    func shuffle(){
        objectWillChange.send()
        model.shuffle()
    }
    func cheat(){
        objectWillChange.send()
        model.cheat()
    }
    func noCheat(){
        objectWillChange.send()
        model.noCheat()
    }
    func restart() {
        model.shuffle()
    }
}
