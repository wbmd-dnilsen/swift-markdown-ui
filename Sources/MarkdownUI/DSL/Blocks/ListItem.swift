import Foundation

/// A Markdown list item.
///
/// You can use list items to compose bulleted and numbered lists.
///
/// ```swift
/// Markdown {
///   NumberedList {
///     ListItem {
///       "Item one"
///       "Additional paragraph"
///     }
///     ListItem {
///       "Item two"
///       BulletedList {
///         "Subitem one"
///         "Subitem two"
///       }
///     }
///   }
/// }
/// ```
///
/// ![](ListItem)
@available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
public struct ListItem: Hashable {
    let children: [BlockNode]
    
    init(children: [BlockNode]) {
        self.children = children
    }
    
    init(_ text: String) {
        self.init(children: [.paragraph(content: [.text(text)])])
    }
    
    public init(@MarkdownContentBuilder content: () -> MarkdownContent) {
        self.init(children: content().blocks)
    }
}
