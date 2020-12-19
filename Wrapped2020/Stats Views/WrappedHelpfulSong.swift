//
//  WrappedHelpfulSong.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 19/12/20.
//

import SwiftUI

struct WrappedHelpfulSong: View {
    var body: some View {
        VStack {
            Spacer()
            WrappedText("One song helped you get through it all", size: 34)
                .foregroundColor(.wrappedGreen)
                .multilineTextAlignment(.center)
                .padding(.bottom, 60)
            WrappedImage("album", background: .song, shape: .circle)
                .padding(.horizontal, 30)
            Spacer()
        }.padding()
    }
}

struct WrappedHelpfulSong_Previews: PreviewProvider {
    static var previews: some View {
        WrappedHelpfulSong().background(Color.wrappedBlue)
    }
}
