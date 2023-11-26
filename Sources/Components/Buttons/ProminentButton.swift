// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

public struct ProminentButton: View {
    private let action: () -> Void
    private let title: any StringProtocol
    private let variant: ButtonVariant

    public init(
        _ title: any StringProtocol,
        _ variant: ButtonVariant = .primary,
        action: @escaping () -> Void
    ) {
        self.action = action
        self.title = title
        self.variant = variant
    }

    public var body: some View {
        SwiftUI.Button(action: action, label: { label })
            .buttonStyle(.borderedProminent)
            .foregroundStyle(foregroundStyle)
            .tint(tint)
    }

    private var label: some View {
        Text(title)
            .frame(maxWidth: .infinity)
    }

    private var foregroundStyle: Color {
        switch variant {
        case .destructive:
            .theme(.onError)
        case .primary:
            .theme(.onPrimary)
        case .secondary:
            .theme(.onSecondary)
        case .tertiary:
            .theme(.onTertiary)
        }
    }

    private var tint: Color {
        switch variant {
        case .destructive:
            .theme(.error)
        case .primary:
            .theme(.primary)
        case .secondary:
            .theme(.secondary)
        case .tertiary:
            .theme(.tertiary)
        }
    }
}

#Preview {
    ButtonVariantPreview { variant in
        ProminentButton("Click me", variant, action: {})
    }
}
