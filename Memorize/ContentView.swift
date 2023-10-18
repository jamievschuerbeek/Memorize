//
//  ContentView.swift
//  Memorize
//
//  Created by user239236 on 10/4/23.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    //let emojis: [String] = ["👻","🕷️", "🎃", "😈"]
    let emojis: [String] = ["🍏", "🍎", "🥝", "🍆", "🍕", "🍟", "🥦", "🍞" ]
    
    var body: some View {
        VStack{
            ScrollView{
                cards
            }
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]){
            
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.orange)
    }
}


struct CardView : View {
    let content : String
    @State var isFaceUp: Bool = true
    var body: some View{
        ZStack{
            let base = RoundedRectangle(cornerRadius: 12)
            Group{
                base
                    .foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content)
                    .font(.largeTitle)
            }
            .opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}

