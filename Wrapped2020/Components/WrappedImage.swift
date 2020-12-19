//
//  WrappedImage.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 19/12/20.
//

import SwiftUI

struct WrappedImage: View {
    var shape: WrappedImageType
    var backgroundType: BackgroundTheme
    var imageName: String
    
    init(_ image: String, background: BackgroundTheme, shape: WrappedImageType) {
        self.imageName = image
        self.backgroundType = background
        self.shape = shape
    }
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .scaleEffect(x: 0.85, y: 0.85)
            .background(background)
    }
    
    private var background: some View {
        switch self.shape {
        case .rectangle:
             return AnyView(WrappedBackground(theme: backgroundType)
                            .scaleEffect(y: 0.7))
        case .circle:
            return AnyView(WrappedBackground(theme: backgroundType).clipShape(Circle()))
        }
    }
}

struct WrappedImage_Previews: PreviewProvider {
    static var previews: some View {
        WrappedImage("artist", background: .artist, shape: .circle)
    }
}

public enum WrappedImageType {
    case rectangle
    case circle
}
