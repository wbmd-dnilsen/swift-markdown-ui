import Foundation

struct Indexed<Value> {
    let index: Int
    let value: Value
}

extension Indexed: Equatable where Value: Equatable {}
extension Indexed: Hashable where Value: Hashable {}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, *)
extension Sequence {
    func indexed() -> [Indexed<Element>] {
        zip(0..., self).map { index, value in
            Indexed(index: index, value: value)
        }
    }
}
