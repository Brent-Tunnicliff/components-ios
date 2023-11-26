// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

/// Internal component for displaying text in previews.
struct PreviewText: View {
    private let title: any StringProtocol

    init(_ title: any StringProtocol) {
        self.title = title
    }

    var body: some View {
        Text(title)
            .font(.caption)
            .foregroundStyle(.gray)
    }
}

#Preview {
    PreviewText("primary")
}
