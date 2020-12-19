//
//  WrappedText.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 19/12/20.
//

import SwiftUI

struct WrappedText: View {
    var text: String
    var size: CGFloat
    
    init(_ text: String, size: CGFloat) {
        self.text = text
        self.size = size
    }
    
    var body: some View {
        Text(text)
            .font(.custom("Gotham-Medium", size: size))
    }
}

struct WrappedText_Previews: PreviewProvider {
    static var previews: some View {
        WrappedText("Hello world!", size: 24.0)
    }
}
