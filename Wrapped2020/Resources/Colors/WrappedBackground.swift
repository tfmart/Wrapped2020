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
        VStack {
            WrappedBackground(theme: .general).overlay(WrappedText("General", size: 26).foregroundColor(.white))
            WrappedBackground(theme: .artist).overlay(WrappedText("Artist", size: 26).foregroundColor(.white))
            WrappedBackground(theme: .song).overlay(WrappedText("Song", size: 26).foregroundColor(.white))
            WrappedBackground(theme: .genre).overlay(WrappedText("Genre", size: 26).foregroundColor(.white))
        }
    }
}

public enum BackgroundTheme {
    case general
    case artist
    case song
    case genre
    
    var colors: [Color] {
        switch self {
        case .general:
            return [
                Color(.sRGB, red: 68/255, green: 6/255, blue: 243/255, opacity: 1.0),
                Color(.sRGB, red: 167/255, green: 217/255, blue: 218/255, opacity: 1.0),
                Color(.sRGB, red: 167/255, green: 217/255, blue: 218/255, opacity: 1.0),
                Color(.sRGB, red: 250/255, green: 231/255, blue: 50/255, opacity: 1.0),
                Color(.sRGB, red: 229/255, green: 50/255, blue: 18/255, opacity: 1.0),
                Color(.sRGB, red: 53/255, green: 9/255, blue: 3/255, opacity: 1.0)
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
                Color(.sRGB, red: 233/255, green: 234/255, blue: 96/255, opacity: 1.0)
            ]
            
        case .song:
            return [
                Color(.sRGB, red: 129/255, green: 19/255, blue: 4/255, opacity: 1.0),
                Color(.sRGB, red: 9/255, green: 1/255, blue: 1/255, opacity: 1.0),
                Color(.sRGB, red: 44/255, green: 0/255, blue: 67/255, opacity: 1.0),
                Color(.sRGB, red: 59/255, green: 0/255, blue: 231/255, opacity: 1.0),
                Color(.sRGB, red: 160/255, green: 207/255, blue: 205/255, opacity: 1.0),
                Color(.sRGB, red: 209/255, green: 238/255, blue: 188/255, opacity: 1.0),
                Color(.sRGB, red: 233/255, green: 234/255, blue: 96/255, opacity: 1.0),
                Color(.sRGB, red: 210/255, green: 201/255, blue: 47/255, opacity: 1.0),
                Color(.sRGB, red: 219/255, green: 167/255, blue: 38/255, opacity: 1.0)
            ]
            
        case .genre:
            return [
                Color(.sRGB, red: 176/255, green: 237/255, blue: 210/255, opacity: 1.0),
                Color(.sRGB, red: 239/255, green: 232/255, blue: 71/255, opacity: 1.0),
                Color(.sRGB, red: 236/255, green: 48/255, blue: 13/255, opacity: 1.0),
                Color(.sRGB, red: 2/255, green: 1/255, blue: 3/255, opacity: 1.0),
                Color(.sRGB, red: 71/255, green: 15/255, blue: 242/255, opacity: 1.0),
                Color(.sRGB, red: 147/255, green: 193/255, blue: 202/255, opacity: 1.0)
            ]
        }
    }
}
