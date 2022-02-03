import Foundation

public struct PlaylistId: ExpressibleByStringLiteral, Hashable {
    public let value: String

    public init(stringLiteral value: String) {
        self.value = value
    }

    public init(_ value: String) {
        self.value = value
    }
}

public struct Playlist: Identifiable {
    public var id: PlaylistId

    public init(id: PlaylistId) {
        self.id = id
    }
}
