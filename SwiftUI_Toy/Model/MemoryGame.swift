//
//  MemoryGame.swift
//  SwiftUI_Toy
//
//  Created by AlexHwang on 2022/03/15.
//

import Foundation // array, string, dic 등등...

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairCards x 2 for pair
        
        for pairIndex in 0..<numberOfPairsOfCards {
            var content = createCardContent(pairIndex)
            
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
    
    
}
