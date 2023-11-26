// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

import SwiftUI

// MARK: - Public

public enum TextFont: CaseIterable {
    case largeTitle
    case title
    case body
    case caption
}

// MARK: - Internal

extension TextFont {
    var value: Font {
        switch self {
        case .largeTitle:
            .largeTitle
        case .title:
            .title
        case .body:
            .body
        case .caption:
            .caption
        }
    }
}
