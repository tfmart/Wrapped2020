//
//  WrappedHelpfulSong.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 19/12/20.
//

import SwiftUI

struct WrappedHelpfulSong: View {
    var body: some View {
        HStack {
            WrappedText("One song helped you get through it all", size: 28)
                .foregroundColor(.wrappedGreen)
        }
    }
}

struct WrappedHelpfulSong_Previews: PreviewProvider {
    static var previews: some View {
        WrappedHelpfulSong().background(Color.wrappedBlue)
    }
}
