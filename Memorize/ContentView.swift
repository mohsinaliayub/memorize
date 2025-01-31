//
//  ContentView.swift
//  Memorize
//
//  Created by Mohsin Ali Ayub on 31.01.25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(.white)
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(lineWidth: 2)
            Text("👻").font(.largeTitle)
        }
        .foregroundStyle(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}
