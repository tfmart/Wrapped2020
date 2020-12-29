//
//  WrappedTheme.swift
//  Wrapped2020
//
//  Created by Tomas Martins on 20/12/20.
//

import SwiftUI

enum WrappedTheme {
    /// Pink background with teal foreground
    case primary
    /// Teal background with pink foreground
    case secondary
    /// Blue background with green foreground
    case ranks
    
    public var backgroundColor: Color {
        switch self {
        case .primary:
            return .wrappedPink
        case .secondary:
            return .wrappedTeal
        case .ranks:
            return .wrappedBlue
        }
    }
    
    public var foregroundColor: Color {
        switch self {
        case .primary:
            return .wrappedTeal
        case .secondary:
            return .wrappedPink
        case .ranks:
            return .wrappedGreen
        }
    }
    
    public var titleColor: Color {
        switch self {
        case .secondary:
            return .black
        case .primary, .ranks:
            return .white
        }
    }
}
