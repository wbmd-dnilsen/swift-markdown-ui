#if canImport(SwiftUI)
import SwiftUI
#endif

#if os(iOS) || os(tvOS) || os(watchOS)
typealias PlatformImage = UIImage
#elseif os(macOS)
typealias PlatformImage = NSImage
#endif

@available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
extension Image {
    init(platformImage: PlatformImage) {
#if os(iOS) || os(tvOS) || os(watchOS)
        self.init(uiImage: platformImage)
#elseif os(macOS)
        self.init(nsImage: platformImage)
#endif
    }
}
