//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by user239236 on 10/18/23.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    private static let emojis = ["🍏", "🍎", "🥝", "🍆", "🍕", "🍟", "🥦", "🍞" ]
    
    private static func createMemoryGame() -> MemoryGame<String>{
        return MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            }
            else {
                return "⁉"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card>{
        return model.cards
    }
    
    var color: Color {
        .orange
    }
    
    var score: Int {
        return model.score
    }
    
    // MARK: - Intents
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: Card){
        model.choose(card)
    }
}
