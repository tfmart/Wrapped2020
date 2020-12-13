//
//  WrappedBackground.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 02/12/20.
//

import SwiftUI

struct WrappedBackground: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.clear)
            .background(LinearGradient(gradient: Gradient(colors: [
                Color(.sRGB, red: 68/255, green: 6/255, blue: 243/255, opacity: 1.0),
                Color(.sRGB, red: 167/255, green: 217/255, blue: 218/255, opacity: 1.0),
                Color(.sRGB, red: 167/255, green: 217/255, blue: 218/255, opacity: 1.0),
                Color(.sRGB, red: 250/255, green: 231/255, blue: 50/255, opacity: 1.0),
                Color(.sRGB, red: 229/255, green: 50/255, blue: 18/255, opacity: 1.0),
                Color(.sRGB, red: 53/255, green: 9/255, blue: 3/255, opacity: 1.0),
            ]), startPoint: .top, endPoint: .bottom))
    }
}

struct WrappedBackground_Previews: PreviewProvider {
    static var previews: some View {
        WrappedBackground()
    }
}
