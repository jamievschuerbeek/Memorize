//
//  ContentView.swift
//  Memorize
//
//  Created by user239236 on 10/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
        }
        .foregroundColor(.orange)
        .padding()

    }
}

struct CardView : View {
    var isFaceUp: Bool
    var body: some View{
        if isFaceUp{
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("👻")
                .font(.largeTitle)
            }
        }
        else{
            RoundedRectangle(cornerRadius: 12)
        }

    }
}

#Preview {
    ContentView()
}
