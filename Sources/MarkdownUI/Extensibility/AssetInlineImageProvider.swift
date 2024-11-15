#if canImport(SwiftUI)
import SwiftUI
#endif

/// An inline image provider that loads images from resources located in an app or a module.
@available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
public struct AssetInlineImageProvider: InlineImageProvider {
    private let name: (URL) -> String
    private let bundle: Bundle?
    
    /// Creates an asset inline image provider.
    /// - Parameters:
    ///   - name: A closure that extracts the image resource name from the URL in the Markdown content.
    ///   - bundle: The bundle where the image resources are located. Specify `nil` to search the app’s main bundle.
    public init(
        name: @escaping (URL) -> String = \.lastPathComponent,
        bundle: Bundle? = nil
    ) {
        self.name = name
        self.bundle = bundle
    }
    
    public func image(with url: URL, label: String) async throws -> Image {
        .init(self.name(url), bundle: self.bundle, label: Text(label))
    }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
extension InlineImageProvider where Self == AssetInlineImageProvider {
    /// An inline image provider that loads images from resources located in an app or a module.
    ///
    /// Use the `markdownInlineImageProvider(_:)` modifier to configure this image provider for a view hierarchy.
    public static var asset: Self {
        .init()
    }
}
