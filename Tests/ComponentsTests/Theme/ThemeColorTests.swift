// Copyright © 2023 Brent Tunnicliff <btunnicliff.dev@gmail.com>

@testable import Components
import XCTest

final class ThemeColorTests: XCTestCase {
    func testColorExists() throws {
        Theme.Color.allCases.forEach { color in
            let result = getColor(named: color.rawValue)
            XCTAssertNotNil(result, "Name mapped to nil: \(color.rawValue)")
        }
    }

    private func getColor(named: String) -> Any? {
        #if canImport(UIKit)
            return UIColor(named: named, in: .module, compatibleWith: nil)
        #elseif os(OSX)
            return NSColor(named: named, bundle: .module)
        #endif
    }
}
