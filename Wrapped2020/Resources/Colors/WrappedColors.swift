//
//  WrappedColors.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 02/12/20.
//

import SwiftUI

public extension Color {
    static var wrappedPink: Color {
        return Color(.sRGB, red: 205/255, green: 21/255, blue: 130/255, opacity: 1.0)
    }
    
    static var wrappedTeal: Color {
        return Color(.sRGB, red: 165/255, green: 254/255, blue: 240/255, opacity: 1.0)
    }
    
    static var wrappedGreen: Color {
        return Color(.sRGB, red: 203/255, green: 244/255, blue: 91/255, opacity: 1.0)
    }
    
    static var wrappedBlue: Color {
        return Color(.sRGB, red: 65/255, green: 0/255, blue: 247/255, opacity: 1.0)
    }
}

struct WrappedColors_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Color.wrappedPink.overlay(WrappedText("Pink", size: 28))
            Color.wrappedTeal.overlay(WrappedText("Teal", size: 28))
            Color.wrappedGreen.overlay(WrappedText("Green", size: 28))
            Color.wrappedBlue.overlay(WrappedText("Blue", size: 28)
                                        .foregroundColor(.white))
        }
    }
}
