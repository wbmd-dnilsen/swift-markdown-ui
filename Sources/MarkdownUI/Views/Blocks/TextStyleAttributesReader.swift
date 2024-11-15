#if canImport(SwiftUI)
import SwiftUI
#endif

@available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
struct TextStyleAttributesReader<Content: View>: View {
    @Environment(\.textStyle) private var textStyle
    
    private let content: (AttributeContainer) -> Content
    
    init(@ViewBuilder content: @escaping (_ attributes: AttributeContainer) -> Content) {
        self.content = content
    }
    
    var body: some View {
        self.content(self.attributes)
    }
    
    private var attributes: AttributeContainer {
        var attributes = AttributeContainer()
        self.textStyle._collectAttributes(in: &attributes)
        return attributes
    }
}
