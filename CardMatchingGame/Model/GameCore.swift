//
//  GameCore.swift
//  Final_Project_SwiftUI_Yan_Wei
//
//  Created by Wei Yan on 12/3/22.
//

//This file is the logic of the game
import Foundation
import SwiftUI
struct GameCore<GameContent> where GameContent: Equatable{
    private(set) var cards: Array<Card>
    
    private var indexFaceUpCard: Int? = nil
    
    
    mutating func choose(_ card: Card){
        //check if the cards are not faceup and unmatch
        if let Index = lookForIndex(of: card), !cards[Index].isFaceUp, !cards[Index].isMatched{
            //check matching index
            if let mightMatchIndex = indexFaceUpCard{
                //if two cards are matched set isMatched to true
                if cards[Index].content == cards[mightMatchIndex].content{
                    cards[Index].isMatched = true
                    cards[mightMatchIndex].isMatched = true
                }
                indexFaceUpCard = nil
                //if the cards are not match this for loop will turn all the cards down
            }else{
                for i in 0..<cards.count{
                    cards[i].isFaceUp = false
                }
                indexFaceUpCard = Index
            }
            //flip the card when player click on it
            cards[Index].isFaceUp = true
        }else{
            print("error")
        }
    }
    
    func lookForIndex(of card: Card) -> Int?{
        for i in 0..<cards.count{
            if cards[i].id == card.id{
                return i
            }
        }
        return nil
    }
    //Because swift struct are immutable object so this function need to be to a mutating function
    mutating func shuffle(){
        cards.shuffle()
    }
    
    mutating func cheat(){
        for i in 0..<cards.count{
            cards[i].isFaceUp = true
        }
    }
    mutating func noCheat(){
        for i in 0..<cards.count{
            cards[i].isFaceUp = false
        }
    }
    mutating func restart(){
    }
    init(pairedOfCards: Int, newCardContent:(Int)-> GameContent) {
        
        cards = []
        
        for i in 0..<pairedOfCards{
            let content: GameContent = newCardContent(i)
            cards.append(Card(content: content, id: i*2))
            cards.append(Card(content: content, id: i*2+1))
        }
        shuffle()
    }
    
    //This is what a card have
    struct Card: Identifiable{
        var isFaceUp = false
        let content: GameContent
        var isMatched = false
        let id: Int
    }
}
