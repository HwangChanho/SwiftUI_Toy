//
//  SwiftUI_ToyApp.swift
//  SwiftUI_Toy
//
//  Created by AlexHwang on 2022/03/14.
//

import SwiftUI

// 시작할떄 메인프로그램이 된다 @main
@main
struct SwiftUI_ToyApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
