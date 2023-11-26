// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

struct SimpleView<Content: View>: View {
    private let content: () -> Content
    private let variant: ViewVariant

    init(variant: ViewVariant, content: @escaping () -> Content) {
        self.content = content
        self.variant = variant
    }

    var body: some View {
        ZStack {
            variant.backgroundColor

            content()
        }
    }
}

#Preview {
    List {
        VariantPreview(ViewVariant.allCases) { variant in
            SimpleView(variant: variant) {
                EmptyView()
            }
            .frame(height: 100)
            .border(.primary)
        }
    }
}
