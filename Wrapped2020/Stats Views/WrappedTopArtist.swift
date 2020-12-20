//
//  WrappedTopArtist.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 19/12/20.
//

import SwiftUI

struct WrappedTopArtist: View {
    var body: some View {
        VStack {
            WrappedText("Your top artist was", size: 16)
                .foregroundColor(.wrappedTeal)
                .padding(.top, 50)
            Spacer()
            WrappedText("Tatsuro Yamashita", size: 28)
                .foregroundColor(.wrappedTeal)
            WrappedImage("artist2", background: .artist, shape: .rectangle)
                .padding(.horizontal, 30)
            WrappedText("You were in the top 10% of their listeners this year.", size: 14)
                .foregroundColor(.wrappedTeal)
                .padding(.horizontal, 32)
                .multilineTextAlignment(.center)
                .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct WrappedTopArtist_Previews: PreviewProvider {
    static var previews: some View {
        WrappedTopArtist()
            .background(Color.wrappedPink)
    }
}
