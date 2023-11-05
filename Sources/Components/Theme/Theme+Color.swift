// Copyright (c) 2023 Brent Tunnicliff

import SwiftUI

extension Theme {
    enum Color: String, CaseIterable {
        // MARK: - Primary
        case primary
        case onPrimary
        case primaryContainer
        case onPrimaryContainer
        case inversePrimary

        // MARK: - Secondary
        case secondary
        case onSecondary
        case secondaryContainer
        case onSecondaryContainer

        // MARK: - Tertiary
        case tertiary
        case onTertiary
        case tertiaryContainer
        case onTertiaryContainer

        // MARK: - Error
        case error
        case errorContainer
        case onError
        case onErrorContainer

        // MARK: - Background
        case background
        case onBackground

        // MARK: - Surface
        case surface
        case onSurface
        case surfaceVariant
        case onSurfaceVariant
        case inverseOnSurface
        case inverseSurface
        case surfaceTint

        // MARK: - Outline
        case outline
        case outlineVariant

        // MARK: - Other
        case shadow
        case scrim
        case seed
    }
}

extension Color {
    static func theme(_ color: Theme.Color) -> Color {
        Color(color.rawValue, bundle: .module)
    }
}
