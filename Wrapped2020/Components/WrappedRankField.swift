//
//  WrappedRankField.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 20/12/20.
//

import SwiftUI

struct WrappedRankField: View {
    private var first: String
    private var second: String
    private var third: String
    private var fourth: String
    private var fifth: String
    private var title: String
    private var theme: WrappedTheme
    
    init(theme: WrappedTheme, type: FieldType,first: String, second: String, third: String, fourth: String, fifth: String) {
        self.theme = theme
        self.first = first
        self.second = second
        self.third = third
        self.fourth = fourth
        self.fifth = fifth
        
        switch type {
        case .topArtist: title = "MY TOP ARTIST"
        case .minutes: title = "MINUTES LISTENED"
        case .mostPlayedSong: title = "TOP STREAMED SONG"
        case .topArtists: title = "TOP ARTISTS"
        case .topGenre: title = "TOP GENRE"
        case .topSongs: title = "TOP SONGS"
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            WrappedText(title, size: 16).padding(.bottom, 2)
                .foregroundColor(theme.titleColor)
            HStack(alignment: .top, spacing: 4) {
                WrappedText("1", size: 16)
                    .foregroundColor(theme.titleColor)
                WrappedText(first, size: 16)
                    .foregroundColor(theme.foregroundColor)
            }
            HStack(alignment: .top, spacing: 4) {
                WrappedText("2", size: 16)
                    .foregroundColor(theme.titleColor)
                WrappedText(second, size: 16)
                    .foregroundColor(theme.foregroundColor)
            }
            HStack(alignment: .top, spacing: 4) {
                WrappedText("3", size: 16)
                    .foregroundColor(theme.titleColor)
                WrappedText(third, size: 16)
                    .foregroundColor(theme.foregroundColor)
            }
            HStack(alignment: .top, spacing: 4) {
                WrappedText("4", size: 16)
                    .foregroundColor(theme.titleColor)
                WrappedText(fourth, size: 16)
                    .foregroundColor(theme.foregroundColor)
            }
            HStack(alignment: .top, spacing: 4) {
                WrappedText("5", size: 16)
                    .foregroundColor(theme.titleColor)
                WrappedText(fifth, size: 16)
                    .foregroundColor(theme.foregroundColor)
            }
        }
    }
}

struct WrappedRankField_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            WrappedRankField(theme: .primary,
                             type: .topSongs,
                             first: "Around the World",
                             second: "Overnight",
                             third: "Sunset Park",
                             fourth: "Fighting",
                             fifth: "Love Space")
                .padding()
                .background(Color.wrappedPink)
            WrappedRankField(theme: .secondary,
                             type: .topSongs,
                             first: "Around the World",
                             second: "Overnight",
                             third: "Sunset Park",
                             fourth: "Fighting",
                             fifth: "Love Space")
                .padding()
                .background(Color.wrappedTeal)
            WrappedRankField(theme: .ranks,
                             type: .topSongs,
                             first: "Around the World",
                             second: "Overnight",
                             third: "Sunset Park",
                             fourth: "Fighting",
                             fifth: "Love Space")
                .padding()
                .background(Color.wrappedBlue)
        }
    }
}
