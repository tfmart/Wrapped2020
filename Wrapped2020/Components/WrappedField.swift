//
//  WrappedField.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 02/12/20.
//

import SwiftUI

struct WrappedField: View {
    var value: String
    private var theme: WrappedTheme
    private var title: String
    private var isHeadline: Bool
    private var spacing: CGFloat
    
    init(field: FieldType, value: String, theme: WrappedTheme, isHeadline: Bool = false, spacing: FieldSpacing = .normal) {
        self.theme = theme
        
        switch field {
        case .topArtist: title = "MY TOP ARTIST"
        case .minutes: title = "MINUTES LISTENED"
        case .mostPlayedSong: title = "TOP STREAMED SONG"
        case .topArtists: title = "TOP ARTISTS"
        case .topGenre: title = "TOP GENRE"
        case .topSongs: title = "TOP SONGS"
        }
        
        switch spacing {
        case .normal: self.spacing = 0
        case .extra: self.spacing = 2
        }
        
        self.value = value
        self.isHeadline = isHeadline
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            WrappedText(title.uppercased(), size: 12)
                .foregroundColor(theme.titleColor)
                .minimumScaleFactor(0.5)
                .padding(.bottom, spacing)
                
            WrappedText(value, size: isHeadline ? 32 : 28)
                .foregroundColor(theme.foregroundColor)
                .minimumScaleFactor(0.5)
                .padding(.bottom, spacing)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WrappedField(field: .topArtist, value: "Daft Punk", theme: .secondary, isHeadline: true)
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

enum FieldSpacing {
    case normal
    case extra
}
