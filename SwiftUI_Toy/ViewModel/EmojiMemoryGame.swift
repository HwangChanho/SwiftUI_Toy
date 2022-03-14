//
//  EmojiMemoryGame.swift
//  SwiftUI_Toy
//
//  Created by AlexHwang on 2022/03/15.
//

import SwiftUI

final class EmojiMemoryGame {
    static let emojis: Array<String> = ["💜", "💚", "🧡", "❤️", "🖤", "🤍", "🤎", "💙", "💔", "❤️‍🔥", "❤️‍🩹", "❣️", "💕", "💞", "💓", "💗", "💖", "💘", "💝"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
