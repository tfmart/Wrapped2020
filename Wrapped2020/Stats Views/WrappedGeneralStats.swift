//
//  WrappedGeneralStats.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 02/12/20.
//

import SwiftUI

struct WrappedGeneralStats: View {
    private var backgroundColor: Color
    private var foregroundColor: Color
    private var theme: Theme
    
    init(theme: Theme) {
        self.theme = theme
        switch theme {
        case .primary:
            self.backgroundColor = .wrappedPink
            self.foregroundColor = .wrappedTeal
        case .secondary:
            self.backgroundColor = .wrappedTeal
            self.foregroundColor = .wrappedPink
        }
    }
    
    var body: some View {
        GeometryReader(content: { geometry in
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading) {
                    Image("artist")
                        .resizable()
                        .frame(width: geometry.size.width, height: geometry.size.width, alignment: .center)
                        .background(Color.white)
                        .padding(.bottom, 20)
                    VStack(alignment: .leading) {
                        WrappedField(field: .topArtist, value: "Tatsuro Yamashita", theme: theme)
                    }
                        .padding(.horizontal, 20)
                    Spacer()
                    HStack(alignment: .top) {
                        WrappedField(field: .mostPlayedSong, value: "Advice For The Bride", theme: theme)
                        Spacer()
                        WrappedField(field: .minutes, value: "40,821", theme: theme)
                    }.padding(.bottom, 32)
                    .padding(.horizontal, 20)
                }
                .background(backgroundColor)
                //Footer
                HStack {
                    WrappedText("Spotify", size: 16)
                        .foregroundColor(backgroundColor)
                    Spacer()
                    WrappedText("#2020WRAPPED", size: 16)
                        .foregroundColor(backgroundColor)
                }.padding()
                .background(foregroundColor)
                
            }
        })
    }
}

struct WrappedGeneralStats_Previews: PreviewProvider {
    static var previews: some View {
        WrappedGeneralStats(theme: .secondary)
    }
}

enum Theme {
    /// Pink backgroun with teal foreground
    case primary
    /// Teal backgroun with pink foreground
    case secondary
}
