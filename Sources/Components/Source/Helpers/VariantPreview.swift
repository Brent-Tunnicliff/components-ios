// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

/// Use when previewing multiple variants of a component.
/// Requires defining the list first to allow nested variants.
struct VariantPreview<Content: View, Variant: Hashable>: View {
    private let content: (Variant) -> Content
    private let variants: [Variant]

    init(_ variants: [Variant], content: @escaping (Variant) -> Content) {
        self.content = content
        self.variants = variants
    }

    var body: some View {
        Section {
            ForEach(variants, id: \.hashValue) { variant in
                VStack(alignment: .leading) {
                    PreviewText(String(describing: variant))

                    content(variant)
                }.padding(8)
            }
        }
    }
}

#Preview {
    List {
        VariantPreview([Variant(value: 1), Variant(value: 2)]) { variant in
            Text(variant.value.description)
        }
    }
}

private struct Variant: Hashable {
    let value: Int
}
