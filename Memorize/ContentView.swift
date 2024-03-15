//
//  ContentView.swift
//  Memorize
//
//  Created by Esther Ramos on 01/02/24.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🎃","🕷️","😈"]
    
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}


struct CardView: View {
   let content: String
   @State var isFaceUP = true
    
    var body: some View {
        ZStack {
            
            let base = RoundedRectangle(cornerRadius: 12)
            
            if isFaceUP {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUP.toggle()
            
        }
    }
}


















#Preview {
    ContentView()
}
