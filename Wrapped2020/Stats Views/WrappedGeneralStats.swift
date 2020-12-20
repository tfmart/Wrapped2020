//
//  WrappedGeneralStats.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 02/12/20.
//

import SwiftUI

struct WrappedGeneralStats: View {
    private var theme: WrappedTheme
    
    init(theme: WrappedTheme) {
        self.theme = theme
    }
    
    var body: some View {
        GeometryReader(content: { geometry in
            VStack(alignment: .leading, spacing: 0) {
                VStack(alignment: .leading) {
                    Image("artist")
                        .resizable()
                        .frame(width: geometry.size.width, height: geometry.size.width, alignment: .center)
                        .padding(.bottom, 20)
                    WrappedField(field: .topArtist, value: "Tatsuro Yamashita", theme: theme, isHeadline: true)
                        .padding(.horizontal, 20)
                        
                    Spacer()
                    HStack(alignment: .top) {
                        WrappedField(field: .mostPlayedSong, value: "Advice For The Bride", theme: theme)
                        Spacer()
                        WrappedField(field: .minutes, value: "40,821", theme: theme)
                    }.padding(.bottom, 32)
                    .padding(.horizontal, 20)
                }
                .background(theme.backgroundColor)
                //Footer
                HStack {
                    WrappedText("Spotify", size: 16)
                        .foregroundColor(theme.backgroundColor)
                    Spacer()
                    WrappedText("#2020WRAPPED", size: 16)
                        .foregroundColor(theme.backgroundColor)
                }.padding()
                .background(theme.foregroundColor)
            }
        })
    }
}

struct WrappedGeneralStats_Previews: PreviewProvider {
    static var previews: some View {
        WrappedGeneralStats(theme: .secondary)
    }
}
