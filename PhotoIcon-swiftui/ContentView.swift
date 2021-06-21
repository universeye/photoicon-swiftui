//
//  ContentView.swift
//  PhotoIcon-swiftui
//
//  Created by Terry Kuo on 2021/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            Photoicon()
                .offset(x: 0, y: -39)
                .frame(width: 300, height: 300)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}


struct Photoicon: View {
    var body: some View {
        ZStack {
            ForEach(0..<8) { item in
                RoundedRectangle(cornerRadius: 27)
                    .frame(width: 48, height: 80)
                    .foregroundColor(.orange)
                    .hueRotation(.degrees(Double(item) * 45))
                    .blendMode(.multiply)
                    //.offset(y: -5)
                    .rotationEffect(.degrees(Double(item) * 45), anchor: .bottom)
            }
        }
    }
}
