//
//  MemorizeGame.swift
//  Memorize
//
//  Created by user239236 on 10/18/23.
//

import Foundation

struct MemoryGame<CardContent> {
    
    private(set) var cards: Array<Card> 
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent){
        cards = []
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        let content: CardContent
    }
}
