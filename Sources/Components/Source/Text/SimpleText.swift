// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

struct SimpleText: View {
    private let font: TextFont
    private let title: any StringProtocol
    private let variant: TextVariant

    init(_ title: any StringProtocol, font: TextFont, variant: TextVariant) {
        self.font = font
        self.title = title
        self.variant = variant
    }

    public var body: some View {
        Text(title)
            .font(font.value)
            .foregroundStyle(variant.color)
    }
}

#Preview {
    List {
        VariantPreview(TextVariant.allCases) { variant in
            VariantPreview(TextFont.allCases) { font in
                SimpleText("Text", font: font, variant: variant)
                    .frame(maxWidth: .infinity)
                    .background(variant.previewBackground)
            }
        }
    }
}
