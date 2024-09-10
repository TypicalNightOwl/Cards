//
//  CardElementView.swift
//  Card
//
//  Created by Ryan Westhoelter on 9/9/24.
//

import SwiftUI

struct CardElementView: View {
    let element: CardElement
    
    var body: some View {
        if let element = element as? ImageElement {
            ImageElementView(element: element)
        }
        if let element = element as? TextElement {
            TextElementView(element: element)
        }
    }
}

struct ImageElementView: View {
    let element: ImageElement
    
    var body: some View {
        element.image
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct TextElementView: View {
    let element: TextElement
    
    var body: some View {
        if !element.text.isEmpty {
            Text(element.text)
                .font(.custom(element.textFont,size: 200))
                .foregroundColor(element.textColor)
                .scalableText()
        }
    }
}

#Preview {
    CardElementView(element: initialElements[0])
}