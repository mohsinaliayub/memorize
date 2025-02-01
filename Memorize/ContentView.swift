//
//  ContentView.swift
//  Memorize
//
//  Created by Mohsin Ali Ayub on 31.01.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(content: "👻")
            CardView(content: "🎃", isFaceUp: true)
            CardView(content: "🕷️", isFaceUp: true)
            CardView(content: "😈")
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
