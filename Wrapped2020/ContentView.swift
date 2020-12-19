//
//  ContentView.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 02/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            WrappedGeneralStats(theme: .primary)
                .cornerRadius(4)
                .padding(.horizontal, 20)
                .padding(.top, 80)
                .padding(.bottom, 80)
                .background(WrappedBackground(theme: .general))
            WrappedTopArtist()
                .background(Color.wrappedPink)
        }.tabViewStyle(PageTabViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
