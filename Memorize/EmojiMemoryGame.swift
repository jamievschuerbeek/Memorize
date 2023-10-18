//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by user239236 on 10/18/23.
//

import SwiftUI

class EmojiMemoryGame{
    private var model = MemoryGame<String>(numberOfPairsOfCards: 4) { index in
        return ["🍏", "🍎", "🥝", "🍆", "🍕", "🍟", "🥦", "🍞" ][index]
    }
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
