//
//  WrappedRanks.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 20/12/20.
//

import SwiftUI

struct WrappedRanks: View {
    private var theme: WrappedTheme
    
    init(theme: WrappedTheme) {
        self.theme = theme
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            VStack {
                WrappedImage("album2", background: .genre, shape: .rectangle)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                HStack(alignment: .top) {
                    WrappedRankField(theme: .ranks,
                                     type: .topArtists,
                                     first: "Tatsuro Yamashita",
                                     second: "Shook",
                                     third: "Proux",
                                     fourth: "YUNG BAE",
                                     fifth: "Breakbot")
                    Spacer()
                    WrappedRankField(theme: .ranks,
                                     type: .topSongs,
                                     first: "Advice For The Bride",
                                     second: "Say So",
                                     third: "The Only Reason",
                                     fourth: "Where Angels Fear To Tread",
                                     fifth: "Losing Youe")
                }.padding(.horizontal, 20)
                Spacer()
                HStack(alignment: .top) {
                    WrappedField(field: .minutes, value: "40,821", theme: theme, isHeadline: true, spacing: .extra)
                    Spacer()
                    WrappedField(field: .topGenre, value: "House", theme: theme, isHeadline: true, spacing: .extra)
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 32)
            }.background(theme.backgroundColor)
            //Footer
            HStack {
                WrappedText("Spotify", size: 16)
                    .foregroundColor(theme.backgroundColor)
                Spacer()
                WrappedText("#2020WRAPPED", size: 16)
                    .foregroundColor(theme.backgroundColor)
            }.padding()
            .background(theme.foregroundColor)
        })
    }
}

struct WrappedRanks_Previews: PreviewProvider {
    static var previews: some View {
        WrappedRanks(theme: .ranks)
    }
}
