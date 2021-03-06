//
//  EmojiMemoryGame.swift
//  SwiftUI_Toy
//
//  Created by AlexHwang on 2022/03/15.
//

import SwiftUI

final class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    static let emojis: Array<String> = ["π", "π", "π§‘", "β€οΈ", "π€", "π€", "π€", "π", "π", "β€οΈβπ₯", "β€οΈβπ©Ή", "β£οΈ", "π", "π", "π", "π", "π", "π", "π"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // @Published μ€λΈμ νΈ κ°μ λ³νλ₯Ό μλ¦°λ€
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func choose(_ card: Card) {
        model.choose(card)
    }
}
