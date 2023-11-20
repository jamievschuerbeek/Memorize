//
//  FlyingNumber.swift
//  Memorize
//
//  Created by Jamie Van Schuerbeek on 20/11/2023.
//

import SwiftUI

struct FlyingNumber: View {
    @State private var offset: CGFloat = 0
    
    let number: Int
    var body: some View {
        if number != 0{
            Text(number, format: .number.sign(strategy: .always()))
                .font(.largeTitle)
                .foregroundColor(number > 0 ? .green : .red)
                .shadow(color: .black, radius: 1.5, x: 1, y: 1)
                .offset(x: 0, y: offset)
                .opacity(offset != 0 ? 0 : 1)
                .onAppear{
                    withAnimation (.easeIn(duration: 1.5)){
                        offset = number < 0 ? 200 : -200
                    }
                }
                .onDisappear{
                    offset = 0
                }
        }
    }
}

#Preview {
    FlyingNumber(number: 5)
}
