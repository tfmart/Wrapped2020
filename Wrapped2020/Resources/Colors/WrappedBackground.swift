//
//  WrappedBackground.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 02/12/20.
//

import SwiftUI

struct WrappedBackground: View {
    private var colors: [Color]
    
    public init(theme: BackgroundTheme) {
        self.colors = theme.colors
    }
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .background(LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom))
    }
}

struct WrappedBackground_Previews: PreviewProvider {
    static var previews: some View {
        WrappedBackground(theme: .artist)
    }
}

public enum BackgroundTheme {
    case general
    case artist
    
    var colors: [Color] {
        switch self {
        case .general:
            return [
                Color(.sRGB, red: 68/255, green: 6/255, blue: 243/255, opacity: 1.0),
                Color(.sRGB, red: 167/255, green: 217/255, blue: 218/255, opacity: 1.0),
                Color(.sRGB, red: 167/255, green: 217/255, blue: 218/255, opacity: 1.0),
                Color(.sRGB, red: 250/255, green: 231/255, blue: 50/255, opacity: 1.0),
                Color(.sRGB, red: 229/255, green: 50/255, blue: 18/255, opacity: 1.0),
                Color(.sRGB, red: 53/255, green: 9/255, blue: 3/255, opacity: 1.0),
            ]
        case .artist:
            return [
                Color(.sRGB, red: 238/255, green: 120/255, blue: 22/255, opacity: 1.0),
                Color(.sRGB, red: 230/255, green: 46/255, blue: 14/255, opacity: 1.0),
                Color(.sRGB, red: 9/255, green: 1/255, blue: 1/255, opacity: 1.0),
                Color(.sRGB, red: 44/255, green: 0/255, blue: 67/255, opacity: 1.0),
                Color(.sRGB, red: 59/255, green: 0/255, blue: 231/255, opacity: 1.0),
                Color(.sRGB, red: 160/255, green: 207/255, blue: 205/255, opacity: 1.0),
                Color(.sRGB, red: 209/255, green: 238/255, blue: 188/255, opacity: 1.0),
                Color(.sRGB, red: 233/255, green: 234/255, blue: 96/255, opacity: 1.0),
            ]
        }
    }
}
