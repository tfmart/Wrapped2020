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
    private var titleColor: Color
    private var contentColor: Color
    
    init(theme: Theme, type: FieldType,first: String, second: String, third: String, fourth: String, fifth: String) {
        self.first = first
        self.second = second
        self.third = third
        self.fourth = fourth
        self.fifth = fifth
        
        switch theme {
        case .primary:
            self.titleColor = Color.white
            self.contentColor = Color.wrappedTeal
        case .secondary:
            self.titleColor = Color.black
            self.contentColor = Color.wrappedPink
        case .ranks:
            self.titleColor = Color.white
            self.contentColor = Color.wrappedGreen
        }
        
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
                .foregroundColor(titleColor)
            HStack(alignment: .top, spacing: 4) {
                WrappedText("1", size: 16)
                    .foregroundColor(titleColor)
                WrappedText(first, size: 16)
                    .foregroundColor(contentColor)
            }
            HStack(alignment: .top, spacing: 4) {
                WrappedText("2", size: 16)
                    .foregroundColor(titleColor)
                WrappedText(second, size: 16)
                    .foregroundColor(contentColor)
            }
            HStack(alignment: .top, spacing: 4) {
                WrappedText("3", size: 16)
                    .foregroundColor(titleColor)
                WrappedText(third, size: 16)
                    .foregroundColor(contentColor)
            }
            HStack(alignment: .top, spacing: 4) {
                WrappedText("4", size: 16)
                    .foregroundColor(titleColor)
                WrappedText(fourth, size: 16)
                    .foregroundColor(contentColor)
            }
            HStack(alignment: .top, spacing: 4) {
                WrappedText("5", size: 16)
                    .foregroundColor(titleColor)
                WrappedText(fifth, size: 16)
                    .foregroundColor(contentColor)
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
