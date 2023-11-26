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
            .foregroundStyle(variant.foregroundStyle)
            .tint(variant.tint)
    }

    private var label: some View {
        Text(title)
            .frame(maxWidth: .infinity)
    }
}

private extension ButtonVariant {
    var foregroundStyle: Color {
        switch self {
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

    var tint: Color {
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
}

#Preview {
    List {
        VariantPreview(ButtonVariant.allCases) { variant in
            ProminentButton("Click me", variant, action: {})
        }
    }
}
