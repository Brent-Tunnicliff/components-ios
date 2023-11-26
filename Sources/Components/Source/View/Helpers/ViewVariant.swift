// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

// MARK: - Public

public enum ViewVariant: CaseIterable {
    // MARK: - Primary
    case primary
    case primaryContainer

    // MARK: - Secondary
    case secondary
    case secondaryContainer

    // MARK: - Tertiary
    case tertiary
    case tertiaryContainer

    // MARK: - Error
    case error
    case errorContainer

    // MARK: - Background
    case background

    // MARK: - Surface
    case surface
    case surfaceVariant
    case inverseSurface
}

// MARK: - Internal

extension ViewVariant {
    var backgroundColor: Color {
        .theme(themeColor)
    }
}

// MARK: - Private

private extension ViewVariant {
    var themeColor: Theme.Color {
        switch self {
        case .primary:
            .primary
        case .primaryContainer:
            .primaryContainer
        case .secondary:
            .secondary
        case .secondaryContainer:
            .secondaryContainer
        case .tertiary:
            .tertiary
        case .tertiaryContainer:
            .tertiaryContainer
        case .error:
            .error
        case .errorContainer:
            .errorContainer
        case .background:
            .background
        case .surface:
            .surface
        case .surfaceVariant:
            .surfaceVariant
        case .inverseSurface:
            .inverseSurface
        }
    }
}
