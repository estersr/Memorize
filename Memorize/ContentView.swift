//
//  ContentView.swift
//  Memorize
//
//  Created by Esther Ramos on 01/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUP: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
    var isFaceUP: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUP {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}


















#Preview {
    ContentView()
}
