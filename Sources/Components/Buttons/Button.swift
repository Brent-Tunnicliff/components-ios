// Copyright (c) 2023 Brent Tunnicliff

import SwiftUI

public struct Button: View {
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
                .theme(.error)
        case .primary:
                .theme(.primary)
        case .secondary:
                .theme(.secondary)
        case .tertiary:
                .theme(.tertiary)
        }
    }

    private var tint: Color {
        switch variant {
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
    VStack {
        Button("Click me", .destructive, action: {})

        Button("Click me", .primary, action: {})

        Button("Click me", .secondary, action: {})

        Button("Click me", .tertiary, action: {})
    }.padding(16)
}
