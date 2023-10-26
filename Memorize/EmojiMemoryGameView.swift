//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by user239236 on 10/4/23.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    private let aspectRatio: CGFloat = 2/3
    private let spacing: CGFloat = 4
    
    var body: some View {
        VStack{
            cards
                .animation(.default, value: viewModel.cards)
                .foregroundColor(viewModel.color)
            Button("Shuffle"){
                viewModel.shuffle()
            }
        }
        .padding()
    }
    
    private var cards: some View {
        AspectVGrid(viewModel.cards, aspectRatio: aspectRatio){ card in
            
            CardView(card)
                .aspectRatio(aspectRatio, contentMode: .fit)
                .padding(spacing)
                .onTapGesture{
                    viewModel.choose(card)
                }
            
        }
    }
}

#Preview {
    EmojiMemoryGameView(viewModel: EmojiMemoryGame())
}
