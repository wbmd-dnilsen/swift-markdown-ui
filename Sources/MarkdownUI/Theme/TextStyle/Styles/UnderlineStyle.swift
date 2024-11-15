#if canImport(SwiftUI)
import SwiftUI
#endif

/// A text style that sets the underline line style of the text.
@available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
public struct UnderlineStyle: TextStyle {
    private let lineStyle: Text.LineStyle?
    
    /// Creates an underline style text style.
    /// - Parameter lineStyle: The line style.
    public init(_ lineStyle: Text.LineStyle?) {
        self.lineStyle = lineStyle
    }
    
    public func _collectAttributes(in attributes: inout AttributeContainer) {
        attributes.underlineStyle = self.lineStyle
    }
}
