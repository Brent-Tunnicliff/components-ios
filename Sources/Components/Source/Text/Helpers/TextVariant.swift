// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

// MARK: - Public

public enum TextVariant: CaseIterable {
    // MARK: - Primary
    case primary
    case onPrimary
    case onPrimaryContainer
    case inversePrimary

    // MARK: - Secondary
    case secondary
    case onSecondary
    case onSecondaryContainer

    // MARK: - Tertiary
    case tertiary
    case onTertiary
    case onTertiaryContainer

    // MARK: - Error
    case error
    case onError
    case onErrorContainer

    // MARK: - Background
    case onBackground

    // MARK: - Surface
    case onSurface
    case onSurfaceVariant
    case surfaceTint
}

// MARK: - Internal

extension TextVariant {
    var color: Color {
        .theme(themeColor)
    }

    var previewBackground: Color {
        .theme(backgroundColor)
    }
}

// MARK: - Private

private extension TextVariant {
    var backgroundColor: Theme.Color {
        switch self {
        case .primary:
            .surface
        case .onPrimary:
            .primary
        case .onPrimaryContainer:
            .primaryContainer
        case .inversePrimary:
            .surface
        case .secondary:
            .surface
        case .onSecondary:
            .secondary
        case .onSecondaryContainer:
            .secondaryContainer
        case .tertiary:
            .surface
        case .onTertiary:
            .tertiary
        case .onTertiaryContainer:
            .tertiaryContainer
        case .error:
            .surface
        case .onError:
            .error
        case .onErrorContainer:
            .errorContainer
        case .onBackground:
            .background
        case .onSurface:
            .surface
        case .onSurfaceVariant:
            .surfaceVariant
        case .surfaceTint:
            .surface
        }
    }

    var themeColor: Theme.Color {
        switch self {
        case .primary:
            .primary
        case .onPrimary:
            .onPrimary
        case .onPrimaryContainer:
            .onPrimaryContainer
        case .inversePrimary:
            .inversePrimary
        case .secondary:
            .secondary
        case .onSecondary:
            .onSecondary
        case .onSecondaryContainer:
            .onSecondaryContainer
        case .tertiary:
            .tertiary
        case .onTertiary:
            .onTertiary
        case .onTertiaryContainer:
            .onTertiaryContainer
        case .error:
            .error
        case .onError:
            .onError
        case .onErrorContainer:
            .onErrorContainer
        case .onBackground:
            .onBackground
        case .onSurface:
            .onSurface
        case .onSurfaceVariant:
            .onSurfaceVariant
        case .surfaceTint:
            .surfaceTint
        }
    }
}
