// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

struct Title: View {
    private let title: any StringProtocol
    private let variant: TextVariant

    init(_ title: any StringProtocol, variant: TextVariant) {
        self.title = title
        self.variant = variant
    }

    var body: some View {
        Text(title)
            .font(.title)
            .foregroundStyle(variant.color)
    }
}

#Preview {
    VariantPreview(TextVariant.allCases) { variant in
        VStack {
            Title("Test", variant: variant)
                .frame(maxWidth: .infinity)
        }
        .background(variant.previewBackground)
    }
}
