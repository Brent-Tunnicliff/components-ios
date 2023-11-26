// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

public struct OutlineButton: View {
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
            .buttonStyle(.bordered)
            .foregroundStyle(variant.foregroundStyle)
            .tint(variant.tint)
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(variant.foregroundStyle, lineWidth: 1)
            )
    }

    private var label: some View {
        SwiftUI.Text(title)
            .frame(maxWidth: .infinity)
    }
}

private extension ButtonVariant {
    var foregroundStyle: Color {
        switch self {
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

    var tint: Color {
        switch self {
        case .destructive:
            .theme(.errorContainer)
        case .primary:
            .theme(.primaryContainer)
        case .secondary:
            .theme(.secondaryContainer)
        case .tertiary:
            .theme(.tertiaryContainer)
        }
    }
}

#Preview {
    VariantPreview(ButtonVariant.allCases) { variant in
        OutlineButton("Click me", variant, action: {})
    }
}
