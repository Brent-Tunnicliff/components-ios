// Copyright (c) 2023 Brent Tunnicliff

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
    VStack {
        ProminentButton("Click me", .destructive, action: {})

        ProminentButton("Click me", .primary, action: {})

        ProminentButton("Click me", .secondary, action: {})

        ProminentButton("Click me", .tertiary, action: {})
    }
    .padding(16)
}
