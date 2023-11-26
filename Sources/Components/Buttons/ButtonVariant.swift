// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

public enum ButtonVariant: CaseIterable {
    case destructive
    case primary
    case secondary
    case tertiary
}

struct ButtonVariantPreview<Button: View>: View {
    private let button: (ButtonVariant) -> Button

    init(button: @escaping (ButtonVariant) -> Button) {
        self.button = button
    }

    var body: some View {
        List(
            ButtonVariant.allCases,
            id: \.hashValue
        ) { variant in
            VStack(alignment: .leading) {
                Text(String(describing: variant))

                button(variant)
            }.padding(8)
        }
        .listStyle(.plain)
    }
}
