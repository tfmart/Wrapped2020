//
//  WrappedField.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 02/12/20.
//

import SwiftUI

struct WrappedField: View {
    var value: String
    
    private var title: String
    private var foreground: Color
    private var titleColor: Color
    private var isHeadline: Bool = false
    
    init(field: FieldType, value: String, theme: Theme) {
        switch field {
        case .topArtist:
            title = "MY TOP ARTIST"
            isHeadline = true
        case .minutes: title = "MINUTES LISTENED"
        case .mostPlayedSong: title = "TOP STREAMED SONG"
        case .topArtists: title = "TOP ARTISTS"
        case .topGenre: title = "TOP GENRE"
        case .topSongs: title = "TOP SONGS"
        }
        
        switch theme {
        case .primary:
            self.foreground = .wrappedTeal
            self.titleColor = .white
        case .secondary:
            self.foreground = .wrappedPink
            self.titleColor = .black
        }
        
        self.value = value
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            WrappedText(title.uppercased(), size: 12)
                .foregroundColor(titleColor)
                .minimumScaleFactor(0.5)
                
            WrappedText(value, size: isHeadline ? 32 : 28)
                .foregroundColor(foreground)
                .minimumScaleFactor(0.5)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WrappedField(field: .topArtist, value: "Daft Punk", theme: .secondary)
    }
}

enum FieldType {
    case topArtist
    case minutes
    case mostPlayedSong
    case topArtists
    case topSongs
    case topGenre
}
